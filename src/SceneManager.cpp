#include "../include/SceneManager.h"
#include "../include/Constants.h"

void SceneManager::loadScene(std::string id) {
	Scene* toBeLoaded = getSceneById(id);
	if (!toBeLoaded) return;

	if (currentScene && toBeLoaded->getIsPanel()) {
		bgScenes[currentScene->layer] = currentScene;
		currentScene->reloadWithState();
	} else if (currentScene) {
		// currentScene->disableScene();
		currentScene->clearScene();
	}
	currentScene = toBeLoaded;
	toBeLoaded = nullptr;
	currentSceneIndex = currentScene->buildIndex;

	currentScene->init();
	manager.refresh(); // check if this works with multiple scenes
}

void SceneManager::loadScene(int buildIndex) {
	if (buildIndex > MAX_SCENE_COUNT) return;

	Scene* toBeLoaded = scenes[buildIndex];
	if (!toBeLoaded) return;

	if (currentScene && toBeLoaded->getIsPanel()) {
		bgScenes[currentScene->layer] = currentScene;
		currentScene->reloadWithState();
	} else if (currentScene) {
		currentScene->clearScene();
	}
	currentScene = toBeLoaded;
	toBeLoaded = nullptr;
	currentSceneIndex = currentScene->buildIndex;

	currentScene->init();
	manager.refresh(); // check if this works with multiple scenes
}

void SceneManager::loadNextScene() {
	loadScene(currentSceneIndex >= MAX_SCENE_COUNT - 1 ? 0 : currentSceneIndex + 1);
}

void SceneManager::loadPrevScene() {
	loadScene(currentSceneIndex <= 0 ? MAX_SCENE_COUNT - 1 : currentSceneIndex - 1);
}

Scene* SceneManager::getCurrentScene() {
	return currentScene;
}

void SceneManager::addScene(Scene* scene) {
	if (scene->buildIndex > MAX_SCENE_COUNT || scenes[scene->buildIndex] != nullptr ||
		getSceneById(scene->name) != nullptr)
		return;

	scenes[scene->buildIndex] = scene;
}

void SceneManager::removeBgScene(int layer) {
	if (layer > MAX_SCENE_COUNT || !bgScenes[layer]) return;
	bgScenes[layer] = nullptr;
}

void SceneManager::updateScene() {
	for (int i = MAX_SCENE_COUNT - 1; i >= 0; i--) {
		if (!bgScenes[i]) continue;
		bgScenes[i]->update();
	}
	currentScene->update();
}

void SceneManager::callSceneEvents(SDL_Event& event) {
	currentScene->handleEvents(event);
	if (currentScene->getIsLocking()) return;
	for (int i = 0; i < MAX_SCENE_COUNT; i++) {
		if (!bgScenes[i]) continue;
		bgScenes[i]->handleEvents(event);
	}
}

void SceneManager::drawScene() {
	for (int i = MAX_SCENE_COUNT - 1; i >= 0; i--) {
		if (!bgScenes[i]) continue;
		bgScenes[i]->draw();
	}
	currentScene->draw();
}

void SceneManager::reloadScene() {
	currentScene->reload();
}

Scene* SceneManager::getSceneById(std::string id) {
	auto scenes_end = scenes + (sizeof(scenes) / sizeof(scenes[0]));
	auto it =
		std::find_if(scenes, scenes_end, [id](Scene* x) { return x ? x->name == id : false; });

	return it != scenes_end ? *it : nullptr;
}
