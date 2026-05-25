#include "../include/Animator.h"
#include <SDL2/SDL_pixels.h>
#include <SDL2/SDL_stdinc.h>
#include <SDL2/SDL_surface.h>

Animator::Animation::Animation() : id("") {
	frames = 1;
	speed = 0;
	loop = false;
	reversible = false;
}

Animator::Animation::Animation(const std::string id) : id(id) {
	frames = 1;
	speed = 0;
	loop = false;
	reversible = false;
}

Animator::Animation::Animation(
	const std::string id, SDL_Rect rect, const char* texPath, int speed, bool isLooping,
	bool isReversible
)
	: id(id) {
	frames = TextureManager::GetSizeOfSurface(texPath).x / rect.w;
	anim_frame = Animator::Animation::LoadFrame(texPath, rect);
	this->speed = speed;
	loop = isLooping;
	reversible = isReversible;
}

Animator::AnimFrame Animator::Animation::LoadFrame(const char* path, SDL_Rect rect) {
	Animator::AnimFrame anim;
	SDL_Surface* sheet = TextureManager::LoadSurface(path);
	for (int i = 0; i < frames; i++) {
		SDL_Surface* frame =
			SDL_CreateRGBSurfaceWithFormat(0, rect.w, rect.h, 16, sheet->format->format);

		uint32_t magenta = SDL_MapRGB(frame->format, 255, 0, 255);
		SDL_FillRect(frame, NULL, magenta);

		SDL_SetColorKey(sheet, SDL_FALSE, 0);
		SDL_Rect src_rect = { i * rect.w, rect.y, rect.w, rect.h };
		SDL_BlitSurface(sheet, &src_rect, frame, NULL);

		SDL_SetColorKey(sheet, SDL_TRUE, SDL_MapRGB(sheet->format, 255, 0, 255));
		SDL_SetColorKey(frame, SDL_TRUE, magenta);

		anim.rot[0].emplace_back(Transform::rotateSurface(frame, Transform::DEG_0));
		anim.rot[1].emplace_back(Transform::rotateSurface(frame, Transform::DEG_90));
		anim.rot[2].emplace_back(Transform::rotateSurface(frame, Transform::DEG_180));
		anim.rot[3].emplace_back(Transform::rotateSurface(frame, Transform::DEG_270));

		SDL_FreeSurface(frame);
	}
	SDL_FreeSurface(sheet);

	return anim;
}

Animator::Animation::~Animation() {
	anim_frame.clean();
}

Animator::Edge::Edge() {}

Animator::Edge::Edge(std::vector<std::shared_ptr<bool>> conditions) {
	this->conditions = conditions;
}

Animator::Edge::~Edge() {}

bool Animator::Edge::canTraverse() const {
	return std::all_of(conditions.begin(), conditions.end(), [](std::shared_ptr<bool> c) {
		return *c;
	});
}

Animator::Animator() {
	frameRect = destRect = { 0, 0, 0, 0 };
}

Animator::~Animator() {
	animations.clear();
	currentAnimation.reset();
}

void Animator::init() {
	transform = &entity->getComponent<Transform>();
	frameRect = { 0, 0, transform->width, transform->height };
	animations[ANIM_ENTRY] = std::make_shared<Animation>(ANIM_ENTRY);
	currentAnimation = animations.at(ANIM_ENTRY);
}

void Animator::update() {
	destRect.x = (int)transform->pos.x;
	destRect.y = (int)transform->pos.y;
	destRect.w = transform->width * transform->scale;
	destRect.h = transform->height * transform->scale;

	if (currentAnimation->loop || frameRect.x != frameRect.w * (currentAnimation->frames - 1)) {
		int factor =
			(int)((SDL_GetTicks64() / currentAnimation->speed) % (2 * currentAnimation->frames));
		if (factor >= currentAnimation->frames) {
			factor -= currentAnimation->reversible ? (factor % currentAnimation->frames) * 2 + 1
												   : currentAnimation->frames;
		}
		frameRect.x = frameRect.w * factor;
	}
	if (adjMatrix.find(currentAnimation->id) == adjMatrix.end()) return;

	auto& connections = adjMatrix.at(currentAnimation->id);
	for (auto it = connections.begin(); it != connections.end(); it++) {
		if (!it->second.canTraverse()) continue;

		currentAnimation = animations.at(it->first);
		frameRect.x = frameRect.y = 0;

		break;
	}
}

void Animator::draw() {
	Transform::Rotation rot;
	switch (transform->angle) {
	case 0:
		rot = Transform::DEG_0;
		break;
	case 90:
	case -270:
		rot = Transform::DEG_90;
		break;
	case 180:
	case -180:
		rot = Transform::DEG_180;
		break;
	case 270:
	case -90:
		rot = Transform::DEG_270;
		break;
	default:
		rot = Transform::DEG_0;
		break;
	}

	int idx = frameRect.x / frameRect.w;
	SDL_Rect src_rect = { 0, 0, frameRect.w, frameRect.h };
	TextureManager::DrawSurface(
		currentAnimation->anim_frame.rot[(int)rot][idx], src_rect, destRect
	);
}

void Animator::addAnimation(
	const std::string id, const char* texPath, int speed, const bool isLooping,
	const bool isReversible
) {
	animations[id] =
		std::make_shared<Animation>(id, frameRect, texPath, speed, isLooping, isReversible);
}

void Animator::addEdge(
	const std::string idFrom, const std::string idTo, std::vector<std::shared_ptr<bool>> conditions
) {
	if (animations.find(idFrom) == animations.end() || animations.find(idTo) == animations.end())
		return;
	adjMatrix[idFrom][idTo] = Edge(conditions);
}

std::string Animator::getCurrAnimID() {
	return currentAnimation->id;
}
