/**
 * @file Collider.h
 * @brief Defines a component for collision detection.
 */

#pragma once

#include "Constants.h"
#include "ECS.h"
#include "Transform.h"
#include <SDL2/SDL.h>
#include <functional>
#include <string>

extern std::vector<Entity*> colliders;

/**
 * @brief Provides an entity with a physical bounding box for collision detection.
 * @details Can function as a solid object, a trigger volume, or a static body.
 * Executes a callback function upon collision with another collider.
 */
struct Collider : public Component {
public:
	std::string tag; ///< A tag to identify the type of collider (e.g., "player", "wall").

	/**
	 * @brief Constructs a fully configured Collider.
	 * @param tag Identifier for this collider type.
	 * @param onCollision Callback function executed on collision.
	 * @param isTrigger If true, detects collisions but does not cause a physical response.
	 * @param isStatic If true, the collider is considered immovable.
	 * @param considerVel If true, includes velocity in collision checks for better tunneling
	 * prevention.
	 * @param isUi If true, indicates this is a UI element collider.
	 */
	Collider(
		std::string tag, std::function<void(Collider& other)> onCollision, bool isTrigger = false,
		bool isStatic = false, bool considerVel = false, bool isUi = false
	);
	/**
	 * @brief Constructs a simple Collider with only a tag.
	 * @param tag Identifier for this collider type.
	 */
	Collider(std::string tag);
	~Collider();

	/**
	 * @brief Initializes the collider by linking it to the entity's transform.
	 */
	void init() override;
	/**
	 * @brief Updates the collider's position and checks for collisions against other colliders.
	 */
	void update() override;
	/**
	 * @brief Executes the collision callback function.
	 * @param other The Collider component of the other entity involved in the collision.
	 */
	void onCollision(Collider& other);
	/**
	 * @brief Checks if this collider is currently colliding with any collider of a specific tag.
	 * @param collTag The tag to check for collision against.
	 * @return True if a collision is occurring, false otherwise.
	 */
	const bool isColliding(std::string collTag);

private:
	SDL_Rect collider;
	std::function<void(Collider& other)> collFunc;
	Transform* transform;
	bool considerVel;
	bool isTrigger;
	bool isStatic;
	bool isUi;

	const bool checkCollision(Collider& other) const;
	bool AABB(const SDL_Rect& otherRect) const;
	bool AABB(const Collider& otherColl) const;
	bool AABBvel(const Collider& otherColl) const;
};
