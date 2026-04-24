/**
 * @file TextureManager.h
 * @brief A static utility class for loading and drawing textures.
 */

#pragma once

#include "Game.h"
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_ttf.h>

/**
 * @brief Provides a centralized, static interface for all texture-related operations.
 * @details This class handles loading textures from files, creating textures from text or colors,
 * and drawing them to the global renderer.
 */
struct TextureManager {
public:
	static TTF_Font* font; ///< The global font used for text rendering.

	/**
	 * @brief Gets the dimensions of an image file without loading the full texture.
	 * @param fileName The path to the image file.
	 * @return An SDL_Point containing the width and height.
	 */
	static SDL_Point GetSizeOfSurface(const char* fileName);
	/**
	 * @brief Loads a texture from an image file.
	 * @param fileName The path to the image file.
	 * @return A pointer to the loaded SDL_Texture.
	 */
	static SDL_Texture* LoadTexture(const char* fileName);
	/**
	 * @brief Creates a texture by rendering text.
	 * @param colour The color of the text.
	 * @param text The string to render.
	 * @return A pointer to the created SDL_Texture.
	 */
	static SDL_Texture* LoadTexture(const SDL_Colour colour, const char* text);
	/**
	 * @brief Creates a solid-color rectangular texture.
	 * @param rect The dimensions of the texture to create.
	 * @param colour The color of the texture.
	 * @return A pointer to the created SDL_Texture.
	 */
	static SDL_Texture* LoadTexture(SDL_Rect& rect, SDL_Colour colour);
	/**
	 * @brief Draws a portion of a texture.
	 * @param tex The source texture.
	 * @param src The source rectangle defining the portion to draw.
	 * @param dest The destination rectangle on the screen.
	 */
	static void DrawTexture(SDL_Texture* tex, SDL_Rect& src, SDL_Rect& dest);
	/**
	 * @brief Draws an entire texture to a destination rectangle.
	 * @param tex The source texture.
	 * @param dest The destination rectangle on the screen.
	 */
	static void DrawTexture(SDL_Texture* tex, SDL_Rect& dest);
	/**
	 * @brief Draws a portion of a texture with rotation.
	 * @param tex The source texture.
	 * @param src The source rectangle.
	 * @param dest The destination rectangle.
	 * @param angle The rotation angle in degrees.
	 */
	static void DrawTexture(SDL_Texture* tex, SDL_Rect& src, SDL_Rect& dest, const double angle);
	/**
	 * @brief Draws an entire texture with rotation.
	 * @param tex The source texture.
	 * @param dest The destination rectangle.
	 * @param angle The rotation angle in degrees.
	 */
	static void DrawTexture(SDL_Texture* tex, SDL_Rect& dest, const double angle);
};
