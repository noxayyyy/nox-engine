#include "../include/Sprites.h"
#include <SDL2/SDL_surface.h>

Sprites::Sprites(const char* tex) {
	setSurface(tex);
}

Sprites::~Sprites() {
	if (surface) {
		SDL_FreeSurface(surface);
	}
}

void Sprites::init() {
	transform = &entity->addComponent<Transform>();
	srcRect.x = srcRect.y = 0;
	srcRect.w = transform->width;
	srcRect.h = transform->height;
}

void Sprites::update() {
	destRect.x = (int)transform->pos.x;
	destRect.y = (int)transform->pos.y;
	destRect.w = transform->width * transform->scale;
	destRect.h = transform->height * transform->scale;
}

void Sprites::draw() {
	TextureManager::DrawSurface(surface, srcRect, destRect, transform->angle);
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
