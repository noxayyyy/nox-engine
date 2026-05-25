/**
 * @file Controller.h
 * @brief Defines a keyboard input controller component for player-controlled entities.
 */

#pragma once

#include "Collider.h"
#include "ECS.h"
#include <csignal>
#include <cstdio>
#include <unordered_map>

/**
 * @brief Translates keyboard input (WASD) into entity movement.
 * @details Reads keyboard state changes and updates the entity's Transform component's velocity.
 */
struct Controller : public Component {
public:
	Controller();
	~Controller();

	/**
	 * @brief Initializes the controller, grabbing the entity's Transform and Collider.
	 */
	void init() override;
	/**
	 * @brief Calculates and applies velocity to the Transform based on current key states.
	 */
	void update() override;
	/**
	 * @brief Resets the controller's state.
	 */
	void reload() override;

private:
	Vector2D lastVel;
	int lastAngle;
	Transform* transform;
	Collider* collider;
};
