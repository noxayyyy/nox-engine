/**
 * @file Game.h
 * @brief Defines the main Game class that orchestrates the entire application.
 */

#pragma once

#include "Constants.h"
#include "ECS.h"
#include "Vector2D.h"
#include <SDL2/SDL.h>
#include <SDL2/SDL_events.h>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_mixer.h>
#include <SDL2/SDL_mouse.h>
#include <SDL2/SDL_ttf.h>

/**
 * @brief The central class responsible for the game loop, window creation, and event handling.
 */
class Game {
public:
	/**
	 * @brief Game constructor.
	 */
	Game();
	/**
	 * @brief Game deconstructor.
	 */
	~Game();

	static float deltaTime; ///< The time in seconds it took to complete the last frame.
	static float
		timeScale; ///< A factor to scale time, allowing for slow-motion or fast-forward effects.
	static SDL_Event event;         ///< The global SDL event object.
	static SDL_Renderer* renderer;  ///< The global SDL renderer.
	static SDL_Point mouseCoords;   ///< The current screen coordinates of the mouse.
	static bool mouseButtonPressed; ///< True if the primary mouse button is currently pressed.

	/**
	 * @brief Initializes the SDL window, renderer, and subsystems.
	 * @param title The title of the window.
	 * @param xpos The initial x-position of the window.
	 * @param ypos The initial y-position of the window.
	 * @param width The width of the window.
	 * @param height The height of the window.
	 * @param fullscreen Whether to start the game in fullscreen mode.
	 */
	void init(const char* title, int xpos, int ypos, int width, int height, bool fullscreen);
	/**
	 * @brief Processes SDL events such as keyboard input and window closure.
	 */
	void handleEvents();
	/**
	 * @brief Placeholder function for ghost spawning logic.
	 */
	void ghostSpawn();
	/**
	 * @brief Updates the state of the game world.
	 */
	void update();
	/**
	 * @brief Renders all game objects to the screen.
	 */
	void render();
	/**
	 * @brief Cleans up resources and shuts down SDL.
	 */
	void clean();

	/**
	 * @brief Checks if the game loop is currently running.
	 * @return True if the game is running, false otherwise.
	 */
	bool running() {
		return isRunning;
	}

	/**
	 * @brief Sets the paused state of the game.
	 * @param pause True to pause the game, false to resume.
	 */
	static void setPause(bool pause);
	/**
	 * @brief Gets the current paused state of the game.
	 * @return True if the game is paused, false otherwise.
	 */
	static const bool getPaused();

private:
	bool isRunning;
	static bool isPaused;
	SDL_Window* window;
	Entity& mouse;
};
