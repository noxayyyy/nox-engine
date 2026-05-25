#include "Transform.h"
#include <SDL2/SDL_stdinc.h>
#include <SDL2/SDL_surface.h>
#include <cstdint>

Transform::Transform() : height(50), width(50), scale(1.0f), speed(DEFAULT_TRANSFORM_SPEED) {
	pos.zero();
	initPos.zero();
}

Transform::Transform(float x, float y)
	: height(50), width(50), scale(1.0f), speed(DEFAULT_TRANSFORM_SPEED) {
	initPos.x = pos.x = x;
	initPos.y = pos.y = y;
}

Transform::Transform(float scale) : height(50), width(50), speed(DEFAULT_TRANSFORM_SPEED) {
	pos.zero();
	this->scale = scale;
}

Transform::Transform(float x, float y, int w, int h, float scale) : speed(DEFAULT_TRANSFORM_SPEED) {
	initPos.x = pos.x = x;
	initPos.y = pos.y = y;
	height = h;
	width = w;
	this->scale = scale;
}

Transform::Transform(Vector2D vec) {
	initPos = pos = vec;
}

void Transform::init() {
	vel.zero();
	angle = 0;
}

void Transform::update() {
	pos.x += vel.x * speed * Game::deltaTime;
	pos.y += vel.y * speed * Game::deltaTime;
}

void Transform::reload() {
	pos = initPos;
	vel.zero();
	angle = 0;
}

void Transform::rotate(Rotation rotation, bool anticlockwise) {
	switch (rotation) {
	case Rotation::DEG_90:
		angle -= 90 * (anticlockwise - 1);
		break;
	case Rotation::DEG_180:
		angle += 180;
		break;
	}
	if (angle < -180 || angle > 180) {
		angle -= 360 * (angle / 180);
	}
}

void Transform::setAngle(double angle) {
	if (angle < -180 || angle > 180) {
		angle -= 360 * ((int)angle / 180);
	}
	this->angle = angle;
}

static void rotate0(uint16_t* src, uint16_t* dest, int w, int h) {
	memcpy(dest, src, w * h * sizeof(uint16_t));
}

static void rotate90(uint16_t* src, uint16_t* dest, int w, int h) {
	for (int y = 0; y < w; y++) {
		for (int x = 0; x < h; x++) {
			dest[y * h + x] = src[(h - 1 - x) * w + y];
		}
	}
}

static void rotate180(uint16_t* src, uint16_t* dest, int w, int h) {
	for (int y = 0; y < h; y++) {
		for (int x = 0; x < w; x++) {
			dest[y * w + x] = src[(h - 1 - y) * w + (w - 1 - x)];
		}
	}
}

static void rotate270(uint16_t* src, uint16_t* dest, int w, int h) {
	for (int y = 0; y < w; y++) {
		for (int x = 0; x < h; x++) {
			dest[y * h + x] = src[x * w + (w - 1 - y)];
		}
	}
}

SDL_Surface* Transform::rotateSurface(SDL_Surface* surface, Rotation rot) {
	if (!surface) {
		return nullptr;
	}

	int dest_w = (rot == Rotation::DEG_90 || rot == Rotation::DEG_270) ? surface->h : surface->w;
	int dest_h = (rot == Rotation::DEG_90 || rot == Rotation::DEG_270) ? surface->w : surface->h;

	SDL_Surface* dest =
		SDL_CreateRGBSurfaceWithFormat(0, dest_w, dest_h, 16, surface->format->format);

	if (!dest) {
		return nullptr;
	}

	SDL_LockSurface(surface);
	SDL_LockSurface(dest);

	uint16_t* src_px = (uint16_t*)surface->pixels;
	uint16_t* dest_px = (uint16_t*)dest->pixels;

	switch (rot) {
	case Rotation::DEG_0:
		rotate0(src_px, dest_px, surface->w, surface->h);
		break;
	case Rotation::DEG_90:
		rotate90(src_px, dest_px, surface->w, surface->h);
		break;
	case Rotation::DEG_180:
		rotate180(src_px, dest_px, surface->w, surface->h);
		break;
	case Rotation::DEG_270:
		rotate270(src_px, dest_px, surface->w, surface->h);
		break;
	}

	SDL_UnlockSurface(surface);
	SDL_UnlockSurface(dest);

	uint32_t color_key;
	if (SDL_GetColorKey(surface, &color_key) == 0) {
		SDL_SetColorKey(dest, SDL_TRUE, color_key);
	}

	return dest;
}
