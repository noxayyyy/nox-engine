/**
 * @file ECS.h
 * @brief Defines the core classes for the Entity-Component-System (ECS) architecture.
 */

#pragma once

#include "Constants.h"
#include <algorithm>
#include <array>
#include <bitset>
#include <memory>
#include <stdexcept>
#include <string>
#include <vector>

struct Component;
struct Entity;
struct Manager;

using ComponentID = std::size_t;
using GroupID = std::size_t;

/**
 * @brief Generates a unique ID for a new component type at runtime.
 * @return A new ComponentID.
 */
inline ComponentID getNewComponentTypeID() {
	static ComponentID lastID = 0u;
	return lastID++;
}

/**
 * @brief Gets the unique ID for a given component type.
 * @tparam T The component type.
 * @return The unique ComponentID for type T.
 */
template<typename T>
inline ComponentID getComponentTypeID() noexcept {
	static ComponentID typeID = getNewComponentTypeID();
	return typeID;
}

using ComponentBitSet = std::bitset<MAX_COMPONENTS>;
using ComponentArray = std::array<std::shared_ptr<Component>, MAX_COMPONENTS>;

using GroupBitSet = std::bitset<MAX_GROUPS>;

/**
 * @brief The base class for all components in the ECS.
 * @details Components contain data and logic that can be attached to entities.
 */
struct Component {
public:
	Entity* entity; ///< Pointer to the entity that owns this component.

	/**
	 * @brief Called once when the component is added to an entity.
	 */
	virtual void init() {}

	/**
	 * @brief Called once per frame. Contains the component's main logic.
	 */
	virtual void update() {}

	/**
	 * @brief Called to reset the component's state.
	 */
	virtual void reload() {}

	/**
	 * @brief Called once per frame after update. Used for rendering.
	 */
	virtual void draw() {}

	virtual ~Component() {}
};

/**
 * @brief A general-purpose object in the game world.
 * @details An Entity is a container for components and does not have logic of its own.
 */
struct Entity {
public:
	/**
	 * @brief Constructs an Entity.
	 * @param memManager A reference to the main manager.
	 * @param _id A unique string identifier for the entity.
	 */
	Entity(Manager& memManager, std::string _id);

	/**
	 * @brief Calls the update method on all of its components.
	 */
	void update();
	/**
	 * @brief Calls the draw method on all of its components.
	 */
	void draw();

	/**
	 * @brief Checks if the entity is currently active.
	 * @return True if active, false otherwise.
	 */
	bool isActive() const;
	/**
	 * @brief Gets the entity's string identifier.
	 * @return The entity's ID.
	 */
	std::string getID() const;

	/**
	 * @brief Activates the entity, enabling its update and draw calls.
	 */
	void enable();
	/**
	 * @brief Deactivates the entity, disabling its update and draw calls.
	 */
	void disable();
	/**
	 * @brief Marks the entity to be refreshed in the manager's group lists.
	 */
	void refresh();
	/**
	 * @brief Calls the reload method on all of its components.
	 */
	void reload();

	/**
	 * @brief Checks if the entity belongs to a specific group.
	 * @param memGroup The GroupID to check.
	 * @return True if the entity is in the group, false otherwise.
	 */
	bool hasGroup(GroupID memGroup);
	/**
	 * @brief Removes the entity from a specific group.
	 * @param memGroup The GroupID to remove from.
	 */
	void delGroup(GroupID memGroup);
	/**
	 * @brief Adds the entity to a specific group.
	 * @param memGroup The GroupID to add to.
	 */
	void addGroup(GroupID memGroup);

	/**
	 * @brief Checks if the entity has a component of a specific type.
	 * @tparam T The component type to check for.
	 * @return True if the component exists, false otherwise.
	 */
	template<typename T>
	bool hasComponent() const {
		return componentBitSet[getComponentTypeID<T>()];
	}

	/**
	 * @brief Removes a component of a specific type from the entity.
	 * @tparam T The component type to remove.
	 */
	template<typename T>
	void delComponent() {
		componentArray[getComponentTypeID<T>()] = nullptr;
		componentBitSet[getComponentTypeID<T>()] = false;
		components.erase(
			std::remove_if(
				components.begin(),
				components.end(),
				[this](const std::shared_ptr<Component>& mComponent) {
					return dynamic_cast<T*>(mComponent.get()) != nullptr;
				}
			),
			components.end()
		);
	}

	/**
	 * @brief Removes all components from the entity.
	 */
	void deleteAllComponents();

	/**
	 * @brief Adds a component to the entity.
	 * @tparam T The component type to add.
	 * @tparam TArgs The types of arguments for the component's constructor.
	 * @param mArgs The arguments for the component's constructor.
	 * @return A reference to the newly added component.
	 */
	template<typename T, typename... TArgs>
	T& addComponent(TArgs&&... mArgs) {
		if (hasComponent<T>()) {
			return *std::static_pointer_cast<T>(componentArray[getComponentTypeID<T>()]);
		}

		std::shared_ptr<T> x = std::make_shared<T>(std::forward<TArgs>(mArgs)...);
		x->entity = this;
		components.emplace_back(x);

		componentArray[getComponentTypeID<T>()] = x;
		componentBitSet[getComponentTypeID<T>()] = true;

		x->init();
		return *x;
	}

	/**
	 * @brief Retrieves a component from the entity.
	 * @tparam T The component type to retrieve.
	 * @return A reference to the component.
	 * @throws std::runtime_error if the component does not exist.
	 */
	template<typename T>
	T& getComponent() const {
		if (!componentArray[getComponentTypeID<T>()]) {
			throw std::runtime_error("Component requested does not exist on entity.");
		}
		return *std::static_pointer_cast<T>(componentArray[getComponentTypeID<T>()]);
	}

private:
	Manager& manager;
	bool active = false;
	std::string id;
	std::vector<std::shared_ptr<Component>> components;

	ComponentArray componentArray;
	ComponentBitSet componentBitSet;
	GroupBitSet groupBitSet;
};

/**
 * @brief Manages all entities and their groups within the game.
 */
struct Manager {
public:
	Manager();

	/**
	 * @brief Updates all active entities.
	 */
	void update();
	/**
	 * @brief Draws all active entities.
	 */
	void draw();
	/**
	 * @brief Re-evaluates group memberships for all entities.
	 */
	void refreshGroups();
	/**
	 * @brief Removes disabled entities and re-evaluates groups.
	 */
	void refresh();

	/**
	 * @brief Adds an entity to a specified group.
	 * @param memEntity The entity to add.
	 * @param memGroup The group to add the entity to.
	 */
	void addToGroup(Entity* memEntity, GroupID memGroup);
	/**
	 * @brief Retrieves all entities belonging to a specific group.
	 * @param memGroup The group whose members are to be retrieved.
	 * @return A vector of pointers to the entities in the group.
	 */
	std::vector<Entity*>& getGroupMembers(GroupID memGroup);
	/**
	 * @brief Creates a new entity and adds it to the manager.
	 * @param id The string identifier for the new entity.
	 * @return A reference to the newly created entity.
	 */
	Entity& addEntity(std::string id);
	/**
	 * @brief Destroys all entities managed by this object.
	 */
	void destroyAll();

private:
	std::vector<std::shared_ptr<Entity>> entities;
	std::array<std::vector<Entity*>, MAX_GROUPS> groupedEntities;
};
