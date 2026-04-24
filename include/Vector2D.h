/**
 * @file Vector2D.h
 * @brief Defines a simple 2D vector class for position and velocity calculations.
 */

#pragma once

#include <iostream>

/**
 * @brief A simple struct for 2D mathematics (points, vectors).
 * @details Provides basic vector operations like addition, subtraction, and scalar multiplication,
 * along with overloaded operators for convenience.
 */
struct Vector2D {
public:
	float x, y;

	Vector2D();
	Vector2D(float x, float y);

	/**
	 * @brief Adds another vector to this one.
	 * @param vec The vector to add.
	 * @return A reference to this vector.
	 */
	Vector2D& add(const Vector2D vec);

	/**
	 * @brief Subtracts another vector from this one.
	 * @param vec The vector to subtract.
	 * @return A reference to this vector.
	 */
	Vector2D& subtract(const Vector2D vec);

	/**
	 * @brief Multiplies this vector by another, component-wise.
	 * @param vec The vector to multiply by.
	 * @return A reference to this vector.
	 */
	Vector2D& multiply(const Vector2D vec);

	/**
	 * @brief Divides this vector by another, component-wise.
	 * @param vec The vector to divide by.
	 * @return A reference to this vector.
	 */
	Vector2D& divide(const Vector2D vec);

	friend Vector2D operator+(Vector2D v1, const Vector2D& v2);
	friend Vector2D operator-(Vector2D v1, const Vector2D& v2);
	friend Vector2D operator*(Vector2D v1, const Vector2D& v2);
	friend Vector2D operator/(Vector2D v1, const Vector2D& v2);

	Vector2D& operator+=(const Vector2D& vec);
	Vector2D& operator-=(const Vector2D& vec);
	Vector2D& operator*=(const Vector2D& vec);
	Vector2D& operator/=(const Vector2D& vec);

	/**
	 * @brief Multiplies the vector by a scalar value.
	 * @param i The scalar integer to multiply by.
	 * @return A reference to this vector.
	 */
	Vector2D& operator*(const int& i);

	bool operator==(const Vector2D& vec);
	bool operator!();

	/**
	 * @brief Resets the vector's components to zero.
	 * @return A reference to this vector.
	 */
	Vector2D& zero();

	friend std::ostream& operator<<(std::ostream& stream, const Vector2D& vec);
};
