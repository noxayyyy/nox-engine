/**
 * @file Button.h
 * @brief Defines a clickable UI button component.
 */

#pragma once

#include "Collider.h"
#include "MouseTracker.h"
#include "Text.h"
#include "TextureManager.h"
#include <functional>

extern Manager manager;

/**
 * @brief A UI component that can be clicked to trigger a callback function.
 * @details Combines a collider, text, and transform to create an interactive button.
 * It changes color on hover and executes a function when pressed.
 */
struct Button : public Component {
public:
	/**
	 * @brief Constructs a fully customized Button.
	 * @param inStr The text to display on the button.
	 * @param x The x-position of the button.
	 * @param y The y-position of the button.
	 * @param w The width of the button.
	 * @param h The height of the button.
	 * @param scale The rendering scale of the button text.
	 * @param defColour The default background color.
	 * @param hoverColour The background color when the mouse hovers over it.
	 * @param textColour The color of the button's text.
	 * @param func The callback function to execute when the button is pressed.
	 */
	Button(
		std::string inStr, int x, int y, int w, int h, float scale, SDL_Colour defColour,
		SDL_Colour hoverColour, SDL_Colour textColour, std::function<void()> func
	);
	/**
	 * @brief Constructs a Button with default colors.
	 * @param inStr The text to display on the button.
	 * @param x The x-position of the button.
	 * @param y The y-position of the button.
	 * @param w The width of the button.
	 * @param h The height of the button.
	 * @param scale The rendering scale of the button text.
	 * @param func The callback function to execute when the button is pressed.
	 */
	Button(std::string inStr, int x, int y, int w, int h, float scale, std::function<void()> func);
	/**
	 * @brief Constructs a Button with default colors and scale.
	 * @param inStr The text to display on the button.
	 * @param x The x-position of the button.
	 * @param y The y-position of the button.
	 * @param w The width of the button.
	 * @param h The height of the button.
	 * @param func The callback function to execute when the button is pressed.
	 */
	Button(std::string inStr, int x, int y, int w, int h, std::function<void()> func);
	~Button();

	/**
	 * @brief Initializes the button's components (transform, collider, text).
	 */
	void init() override;
	/**
	 * @brief Checks for mouse hover and click events to update the button's state.
	 */
	void update() override;
	/**
	 * @brief Reloads the button's texture, useful after state changes.
	 */
	void reload() override;
	/**
	 * @brief Draws the button's background and text.
	 */
	void draw() override;

private:
	float scale;
	bool isPressed;
	std::string content;
	std::function<void()> pressFunc;

	Transform* transform;
	Collider* collider;
	Text* text;

	SDL_Rect buttonRect;
	SDL_Texture* texture;

	SDL_Colour defColour;
	SDL_Colour hoverColour;
	SDL_Colour textColour;

	/**
	 * @brief Sets the button's background texture to a solid color.
	 * @param colour The SDL_Colour to use for the texture.
	 */
	void setTex(SDL_Colour& colour);
};
