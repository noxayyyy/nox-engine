#include "TextureManager.h"
#include <SDL2/SDL_pixels.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_stdinc.h>
#include <SDL2/SDL_surface.h>

SDL_Point TextureManager::GetSizeOfSurface(const char* fileName) {
	SDL_Surface* tmpSurface = IMG_Load(fileName);
	SDL_Point out = { tmpSurface->w, tmpSurface->h };
	SDL_FreeSurface(tmpSurface);

	return out;
}

SDL_Surface* TextureManager::LoadSurface(const char* fileName) {
	SDL_Surface* tmpSurface = IMG_Load(fileName);
	if (!tmpSurface) {
		return nullptr;
	}

	SDL_LockSurface(tmpSurface);
	uint32_t* pixels = (uint32_t*)tmpSurface->pixels;
	for (int i = 0; i < tmpSurface->w * tmpSurface->h; i++) {
		if (((pixels[i] >> 24) & 0xFF) < 128) {
			pixels[i] = 0xFFFF00FF;
		}
	}
	SDL_UnlockSurface(tmpSurface);

	SDL_Surface* converted = SDL_ConvertSurfaceFormat(tmpSurface, SDL_PIXELFORMAT_RGB565, 0);
	SDL_FreeSurface(tmpSurface);
	SDL_SetColorKey(converted, SDL_TRUE, SDL_MapRGB(converted->format, 255, 0, 255));

	return converted;
}

SDL_Surface* TextureManager::LoadSurface(SDL_Rect& rect, SDL_Colour colour) {
	SDL_Surface* surface =
		SDL_CreateRGBSurfaceWithFormat(0, rect.w, rect.h, 16, SDL_PIXELFORMAT_RGB565);
	SDL_FillRect(surface, NULL, SDL_MapRGB(surface->format, colour.r, colour.g, colour.b));

	return surface;
}

void TextureManager::DrawSurface(SDL_Surface* surface, SDL_Rect& src, SDL_Rect& dest) {
	SDL_BlitScaled(surface, &src, Game::screen, &dest);
}

void TextureManager::DrawSurface(SDL_Surface* surface, SDL_Rect& dest) {
	SDL_BlitSurface(surface, NULL, Game::screen, &dest);
}

void TextureManager::DrawSurface(
	SDL_Surface* surface, SDL_Rect& src, SDL_Rect& dest, const double angle
) {
	if (!surface || !Game::screen) return;

	float rad = angle * M_PI / 180.0f;
	float cosA = cosf(rad);
	float sinA = sinf(rad);

	float destCX = dest.w / 2.0f;
	float destCY = dest.h / 2.0f;
	float srcCX = src.w / 2.0f;
	float srcCY = src.h / 2.0f;

	float scaleX = (float)src.w / dest.w;
	float scaleY = (float)src.h / dest.h;

	SDL_Surface* rotated =
		SDL_CreateRGBSurfaceWithFormat(0, dest.w, dest.h, 16, surface->format->format);
	if (!rotated) return;

	uint32_t colorkey = SDL_MapRGB(rotated->format, 255, 0, 255);
	SDL_FillRect(rotated, NULL, colorkey);

	SDL_LockSurface(surface);
	SDL_LockSurface(rotated);

	uint16_t* surfacePx = (uint16_t*)surface->pixels;
	uint16_t* destPx = (uint16_t*)rotated->pixels;
	uint16_t ck = (uint16_t)SDL_MapRGB(surface->format, 255, 0, 255);

	for (int dy = 0; dy < dest.h; dy++) {
		for (int dx = 0; dx < dest.w; dx++) {
			float rx = dx - destCX;
			float ry = dy - destCY;

			float surfaceX = (cosA * rx + sinA * ry) * scaleX + srcCX;
			float surfaceY = (-sinA * rx + cosA * ry) * scaleY + srcCY;

			int sx = (int)surfaceX;
			int sy = (int)surfaceY;

			if (sx < 0 || sx >= src.w || sy < 0 || sy >= src.h) continue;

			uint16_t pixel = surfacePx[(sy + src.y) * surface->w + (sx + src.x)];

			if (pixel == ck) continue;

			destPx[dy * rotated->w + dx] = pixel;
		}
	}

	SDL_UnlockSurface(surface);
	SDL_UnlockSurface(rotated);

	SDL_SetColorKey(rotated, SDL_TRUE, colorkey);
	SDL_BlitSurface(rotated, NULL, Game::screen, &dest);
	SDL_FreeSurface(rotated);
}

void TextureManager::DrawSurface(SDL_Surface* surface, SDL_Rect& dest, const double angle) {
	if (!surface || !Game::screen) return;

	float rad = angle * M_PI / 180.0f;
	float cosA = cosf(rad);
	float sinA = sinf(rad);

	float surfaceCX = surface->w / 2.0f;
	float surfaceCY = surface->h / 2.0f;
	float destCX = dest.w / 2.0f;
	float destCY = dest.h / 2.0f;

	SDL_Surface* rotated =
		SDL_CreateRGBSurfaceWithFormat(0, dest.w, dest.h, 16, surface->format->format);
	if (!rotated) return;

	uint32_t colorkey = SDL_MapRGB(rotated->format, 255, 0, 255);
	SDL_FillRect(rotated, NULL, colorkey);

	SDL_LockSurface(surface);
	SDL_LockSurface(rotated);

	uint16_t* surfacePx = (uint16_t*)surface->pixels;
	uint16_t* destPx = (uint16_t*)rotated->pixels;
	uint16_t ck = (uint16_t)SDL_MapRGB(surface->format, 255, 0, 255);

	for (int dy = 0; dy < dest.h; dy++) {
		for (int dx = 0; dx < dest.w; dx++) {
			float rx = dx - destCX;
			float ry = dy - destCY;

			float surfaceX = cosA * rx + sinA * ry + surfaceCX;
			float surfaceY = -sinA * rx + cosA * ry + surfaceCY;

			int sx = (int)surfaceX;
			int sy = (int)surfaceY;

			if (sx < 0 || sx >= surface->w || sy < 0 || sy >= surface->h) continue;

			uint16_t pixel = surfacePx[sy * surface->w + sx];

			if (pixel == ck) continue;

			destPx[dy * rotated->w + dx] = pixel;
		}
	}

	SDL_UnlockSurface(surface);
	SDL_UnlockSurface(rotated);

	SDL_SetColorKey(rotated, SDL_TRUE, colorkey);
	SDL_BlitSurface(rotated, NULL, Game::screen, &dest);
	SDL_FreeSurface(rotated);
}
