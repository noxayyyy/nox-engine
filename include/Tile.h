/**
 * @file Tile.h
 * @brief Defines a component representing a single tile in a grid-based map.
 */

#pragma once

#include "ECS.h"
#include "Sprites.h"
#include "Transform.h"
#include <SDL2/SDL.h>

/**
 * @brief A component that represents one square in a tilemap.
 * @details This is a convenience component that combines a Transform and a Sprite
 * and holds data specific to its role in a map, like its ID.
 */
struct Tile : public Component {
public:
	Transform* transform; ///< Pointer to the tile's Transform component.
	Sprites* sprite;      ///< Pointer to the tile's Sprite component.

	SDL_Rect tileRect; ///< The rectangle defining the tile's position and size.
	int tileID;        ///< The identifier for the type of tile (e.g., wall, path).
	const char* path;  ///< The file path to the tile's texture.

	/**
	 * @brief Constructs a Tile.
	 * @param x The grid x-coordinate.
	 * @param y The grid y-coordinate.
	 * @param w The width of the tile.
	 * @param h The height of the tile.
	 * @param id The tile's type ID.
	 */
	Tile(int x, int y, int w, int h, int id);
	~Tile();

	/**
	 * @brief Initializes the tile by adding Transform and Sprite components to its entity.
	 */
	void init() override;
	/**
	 * @brief Resizes the tile's underlying components.
	 * @param w The new width.
	 * @param h The new height.
	 * @param scale The new rendering scale.
	 */
	void resizeTile(int w, int h, float scale = 0.64f);
};
