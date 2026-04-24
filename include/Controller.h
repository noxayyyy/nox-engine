/**
 * @file Controller.h
 * @brief Defines a keyboard input controller component for player-controlled entities.
 */

#pragma once

#include "Collider.h"
#include "ECS.h"
#include <csignal>

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
	 * @brief Updates the state when a key is pressed down.
	 * @param key The SDL_Keycode of the pressed key.
	 */
	void updateKeyDown(SDL_Keycode key);
	/**
	 * @brief Updates the state when a key is released.
	 * @param key The SDL_Keycode of the released key.
	 */
	void updateKeyUp(SDL_Keycode key);
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

	std::unordered_map<SDL_Keycode, bool> KEY_STATES {
		{ SDLK_w, false },
		{ SDLK_s, false },
		{ SDLK_a, false },
		{ SDLK_d, false },
	};
};
