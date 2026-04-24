/**
 * @file MouseTracker.h
 * @brief Defines a component that tracks the mouse position and state.
 */

#pragma once

#include "Collider.h"
#include "ECS.h"
#include "Transform.h"

/**
 * @brief A component attached to an entity that follows the mouse cursor.
 * @details This is typically used for a single, global "mouse" entity that can
 * interact with UI elements like buttons.
 */
struct MouseTracker : public Component {
public:
	MouseTracker();
	~MouseTracker();

	/**
	 * @brief Initializes the component by getting the entity's transform and collider.
	 */
	void init() override;
	/**
	 * @brief Updates the entity's position to match the mouse cursor's current coordinates.
	 */
	void update() override;
	/**
	 * @brief Resets the mouse pressed state.
	 */
	void reload() override;

	/**
	 * @brief Gets the current state of the primary mouse button.
	 * @return True if the mouse button is pressed, false otherwise.
	 */
	static const bool getMouseButtonPressed();

private:
	Transform* transform;
	Collider* collider;
	static bool isPressed;
};
