/**
 * @file Sprites.h
 * @brief Defines the component for rendering a static or animated sprite.
 */

#pragma once

#include "ECS.h"
#include "TextureManager.h"
#include "Transform.h"
#include <SDL2/SDL.h>

/**
 * @brief A component that gives an entity a visual representation using a texture.
 * @details This component is responsible for drawing a texture at the entity's position.
 * It can be controlled by an Animator component for animated sprites.
 */
struct Sprites : public Component {
	friend struct Animator;

public:
	/**
	 * @brief Constructs a sprite from a texture path.
	 * @param tex The file path to the texture.
	 */
	Sprites(const char* tex);
	/**
	 * @brief Constructs a sprite with simple, built-in animation capabilities.
	 * @param tex The file path to the sprite sheet.
	 * @param nFrames The number of frames in the animation.
	 * @param mSpeed The delay in milliseconds between frames.
	 * @param loop Whether the animation should loop.
	 */
	Sprites(const char* tex, int nFrames, int mSpeed, bool loop);
	~Sprites();

	/**
	 * @brief Initializes the sprite, getting the entity's transform and loading the texture.
	 */
	void init() override;
	/**
	 * @brief Updates the destination rectangle for rendering based on the transform.
	 */
	void update() override;
	/**
	 * @brief Draws the sprite's current texture to the screen.
	 */
	void draw() override;
	/**
	 * @brief Recalculates the sprite's on-screen dimensions based on texture size and transform
	 * scale.
	 */
	void recalcSpriteDimensions();

private:
	Transform* transform;
	SDL_Texture* texture;
	SDL_Rect srcRect, destRect;

	/**
	 * @brief Loads and assigns a new texture to this sprite.
	 * @param tex The file path to the texture.
	 */
	void setTex(const char* tex);
};
