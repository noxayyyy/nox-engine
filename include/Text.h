/**
 * @file Text.h
 * @brief Defines a component for rendering text.
 */

#pragma once

#include "ECS.h"
#include "TextureManager.h"
#include <SDL2/SDL_ttf.h>

/**
 * @brief A component that renders a string of text on the screen.
 * @details Wraps SDL_ttf to create a texture from a string and displays it.
 */
struct Text : public Component {
public:
	/**
	 * @brief Constructs a fully customized Text component.
	 * @param inStr The initial string to display.
	 * @param x The x-position.
	 * @param y The y-position.
	 * @param scale The rendering scale.
	 * @param color The color of the text.
	 */
	Text(std::string inStr, int x, int y, float scale, SDL_Color color);
	/**
	 * @brief Constructs a Text component with a default color.
	 * @param inStr The initial string to display.
	 * @param x The x-position.
	 * @param y The y-position.
	 * @param scale The rendering scale.
	 */
	Text(std::string inStr, int x, int y, float scale);
	/**
	 * @brief Constructs a Text component with a default color and scale.
	 * @param inStr The initial string to display.
	 * @param x The x-position.
	 * @param y The y-position.
	 */
	Text(std::string inStr, int x, int y);

	~Text() override;

	/**
	 * @brief Updates the destination rectangle for rendering.
	 */
	void update() override;
	/**
	 * @brief Draws the text texture to the screen.
	 */
	void draw() override;

	/**
	 * @brief Changes the text content and regenerates the texture.
	 * @param text The new string to display.
	 */
	void changeText(std::string text);
	/**
	 * @brief Adjusts the text's position to be centered within a parent rectangle.
	 * @param parentRect The rectangle to center within.
	 */
	void centreText(SDL_Rect& parentRect);

protected:
	std::string data;
	float scale;
	SDL_Texture* textTex;
	SDL_Colour textColour;
	SDL_Rect destRect;

	/**
	 * @brief Creates a new texture from a string of text.
	 * @param text The string to render.
	 */
	void setTex(const char* text);
};
