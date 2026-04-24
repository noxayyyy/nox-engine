/**
 * @file SceneManager.h
 * @brief Defines the manager for loading, updating, and transitioning between scenes.
 */

#pragma once

#include "Scene.h"

extern Manager manager;

/**
 * @brief Manages the lifecycle of all scenes in the game.
 * @details Handles loading, unloading, and routing updates and draw calls to the active scene(s).
 */
struct SceneManager {
public:
	SceneManager() {}

	~SceneManager() {}

	/**
	 * @brief Loads a scene by its string identifier.
	 * @param id The name of the scene to load.
	 */
	void loadScene(std::string id);
	/**
	 * @brief Loads a scene by its build index.
	 * @param buildIndex The index of the scene to load.
	 */
	void loadScene(int buildIndex);
	/**
	 * @brief Loads the scene with the next sequential build index.
	 */
	void loadNextScene();
	/**
	 * @brief Loads the scene with the previous sequential build index.
	 */
	void loadPrevScene();

	/**
	 * @brief Gets a pointer to the currently active primary scene.
	 * @return A pointer to the current Scene.
	 */
	Scene* getCurrentScene();
	/**
	 * @brief Adds a scene to the manager's collection.
	 * @param scene A pointer to the scene to add.
	 */
	void addScene(Scene* scene);
	/**
	 * @brief Removes a background (panel) scene from a specific layer.
	 * @param layer The layer from which to remove a scene.
	 */
	void removeBgScene(int layer);

	/**
	 * @brief Calls the update method on the current active scene(s).
	 */
	void updateScene();
	/**
	 * @brief Forwards SDL events to the current active scene(s).
	 * @param event The SDL_Event to process.
	 */
	void callSceneEvents(SDL_Event& event);
	/**
	 * @brief Calls the draw method on the current active scene(s).
	 */
	void drawScene();
	/**
	 * @brief Calls the reload method on the current active scene.
	 */
	void reloadScene();

private:
	Scene* scenes[MAX_SCENE_COUNT];
	Scene* bgScenes[MAX_SCENE_COUNT];
	Scene* currentScene;
	int currentSceneIndex;

	Scene* getSceneById(std::string id);
};
