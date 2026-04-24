/**
 * @file Constants.h
 * @brief Defines global constants and enums used throughout the engine and game.
 */

#pragma once

#include <SDL2/SDL_rect.h>
#include <string>

/**
 * @brief Enumeration for assigning entities to specific rendering or update groups.
 */
enum GroupLabels : std::size_t {
	MAP,
	PACMAN,
	GHOSTS,
	GHOST_BAR,
	PELLETS,
	COLLIDERS,
	BUTTONS,
};

// main
const int FPS_CAP = 60; ///< The target frames per second for the game loop.
const float FRAME_DELAY = 1.0f / (float)FPS_CAP; ///< The ideal time slice for a single frame.

// ECS
const std::size_t MAX_COMPONENTS = 32; ///< Maximum number of components an entity can have.
const std::size_t MAX_GROUPS = 32;     ///< Maximum number of groups available in the manager.

// game
const SDL_Point WINDOW_SIZE { 1366, 768 }; ///< Default window dimensions.

// scene manager
const int MAX_SCENE_COUNT = 10; ///< Maximum number of scenes the manager can hold.

// counters
const int SAMPLE_COUNT = 10; ///< Number of frames to average over for FPS calculation.

// mouse
const std::string MOUSE_TAG = "mouse"; ///< Collider tag for the mouse entity.

const std::string WALL_TAG = "wall"; ///< Collider tag for wall tiles.

// anim
static const char* ANIM_ENTRY =
	"animentry"; ///< Default entry point ID for the animation state machine.
