/**
 * @file Transform.h
 * @brief Defines the component for managing an entity's position, rotation, and scale.
 */

#pragma once

#include "ECS.h"
#include "Game.h"
#include "Vector2D.h"

/**
 * @brief Stores an entity's position, velocity, scale, and rotation.
 * @details This is a fundamental component for any entity that exists in the game world.
 * Its position is updated based on its velocity each frame.
 */
struct Transform : public Component {
	/**
	 * @brief Enumeration for common rotation angles.
	 */
	enum Rotations { NINETY, ONE_EIGHTY };

	Vector2D initPos, pos, vel; ///< Initial position, current position, and velocity vectors.
	int height = 50;            ///< The height of the entity's bounding box.
	int width = 50;             ///< The width of the entity's bounding box.
	float scale = 0.6f;         ///< The rendering scale.
	float speed = 240.0f;       ///< The movement speed multiplier.
	int angle;                  ///< The rotation angle in degrees.

	Transform();
	Transform(float x, float y);
	Transform(float scale);
	Transform(float x, float y, int w, int h, float scale);
	Transform(Vector2D vec);

	/**
	 * @brief Initializes the transform by setting its position.
	 */
	void init() override;
	/**
	 * @brief Updates the position based on velocity, delta time, and time scale.
	 */
	void update() override;
	/**
	 * @brief Resets the position to its initial state.
	 */
	void reload() override;

	/**
	 * @brief Rotates the transform by a predefined amount.
	 * @param rotation The rotation to apply (NINETY or ONE_EIGHTY).
	 * @param anticlockwise If true, rotates counter-clockwise.
	 */
	void rotate(Rotations rotation, bool anticlockwise);
	/**
	 * @brief Sets the transform's angle to a specific value.
	 * @param angle The new angle in degrees.
	 */
	void setAngle(double angle);
};
