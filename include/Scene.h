/**
 * @file Scene.h
 * @brief Defines the abstract base class for all game scenes.
 */

#pragma once

#include "Collider.h"
#include "ECS.h"
#include <vector>

/**
 * @brief An abstract class representing a distinct part of the game, like a main menu or a level.
 * @details Manages a collection of entities that exist within it.
 */
struct Scene {
public:
	std::string name; ///< The unique name of the scene.
	int buildIndex;   ///< The index of the scene for sequential loading.
	int layer; ///< The rendering layer, for handling multiple active scenes (e.g., UI panels).
	bool mouseButtonPressed;

	/**
	 * @brief Constructs a Scene.
	 * @param name The unique name of the scene.
	 * @param buildIndex The scene's build index.
	 * @param isPanel True if this scene is a UI panel that can overlay other scenes.
	 * @param isLocking True if this scene should prevent updates in scenes on lower layers.
	 * @param layer The rendering and update layer.
	 */
	Scene(std::string name, int buildIndex, bool isPanel, bool isLocking, int layer);

	virtual ~Scene() {}

	/**
	 * @brief Pure virtual function for scene-specific initialization logic.
	 */
	virtual void init() = 0;
	/**
	 * @brief Pure virtual function for scene-specific update logic.
	 */
	virtual void update() = 0;
	/**
	 * @brief Pure virtual function to reset the scene to its initial state.
	 */
	virtual void reload() = 0;
	/**
	 * @brief Pure virtual function to reload the scene while preserving some state (e.g., UI
	 * state).
	 */
	virtual void reloadWithState() = 0;
	/**
	 * @brief Pure virtual function to handle scene-specific SDL events.
	 * @param event The SDL_Event to process.
	 */
	virtual void handleEvents(SDL_Event& event) = 0;
	/**
	 * @brief Pure virtual function for scene-specific drawing logic.
	 */
	virtual void draw() = 0;

	/**
	 * @brief Registers an entity as belonging to this scene.
	 * @param entity The entity to add.
	 */
	void addEntityToScene(Entity& entity);
	/**
	 * @brief Removes an entity from this scene's management.
	 * @param entity The entity to remove.
	 */
	void removeEntityFromScene(Entity* entity);
	/**
	 * @brief Checks if a specific entity is part of this scene.
	 * @param entity The entity to check for.
	 * @return True if the entity is in the scene, false otherwise.
	 */
	bool existsInScene(Entity* entity);
	/**
	 * @brief Removes all entities from the scene.
	 */
	void clearScene();
	/**
	 * @brief Activates all entities within the scene.
	 */
	void enableScene();
	/**
	 * @brief Deactivates all entities within the scene.
	 */
	void disableScene();

	/**
	 * @brief Gets whether the scene is a UI panel.
	 * @return True if the scene is a panel.
	 */
	const bool& getIsPanel() const;
	/**
	 * @brief Gets whether the scene locks updates on lower layers.
	 * @return True if the scene is a locking scene.
	 */
	const bool& getIsLocking() const;

private:
	std::vector<Entity*> entities;
	bool isPanel;
	bool isLocking;
};
