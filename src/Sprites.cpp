#include "Sprites.h"
#include <SDL2/SDL_surface.h>

Sprites::Sprites(const char* surface_path) {
	surface = nullptr;
	transform = nullptr;
	srcRect = destRect = { 0, 0, 0, 0 };
	setSurface(surface_path);
}

Sprites::~Sprites() {
	if (surface) {
		SDL_FreeSurface(surface);
	}
}

void Sprites::init() {
	transform = &entity->addComponent<Transform>();
	srcRect.x = srcRect.y = 0;
	if (entity->getID() == "pacman") {
		srcRect.w = transform->width;
		srcRect.h = transform->height;
	} else {
		srcRect.w = surface->w;
		srcRect.h = surface->h;
	}
}

void Sprites::update() {
	destRect.x = (int)transform->pos.x;
	destRect.y = (int)transform->pos.y;
	destRect.w = transform->width * transform->scale;
	destRect.h = transform->height * transform->scale;
}

void Sprites::draw() {
	TextureManager::DrawSurface(surface, srcRect, destRect);
}

void Sprites::recalcSpriteDimensions() {
	srcRect.w = transform->width;
	srcRect.h = transform->height;
}

void Sprites::setSurface(const char* surface_path) {
	if (surface) {
		SDL_FreeSurface(surface);
	}
	surface = TextureManager::LoadSurface(surface_path);
}
