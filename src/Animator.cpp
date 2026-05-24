#include "Animator.h"

Animator::Animation::Animation() : id("") {
	frames = 1;
	texture = nullptr;
	speed = 0;
	loop = false;
	reversible = false;
}

Animator::Animation::Animation(const std::string id) : id(id) {
	frames = 1;
	texture = nullptr;
	speed = 0;
	loop = false;
	reversible = false;
}

Animator::Animation::Animation(
	const std::string id, SDL_Point frameSize, const char* texPath, int speed, bool isLooping,
	bool isReversible
)
	: id(id) {
	frames = TextureManager::GetSizeOfSurface(texPath).x / frameSize.x;
	texture = TextureManager::LoadTexture(texPath);
	this->speed = speed;
	loop = isLooping;
	reversible = isReversible;
}

Animator::Animation::~Animation() {
	if (texture) {
		SDL_DestroyTexture(texture);
	}
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

Animator::Animator() {}

Animator::~Animator() {
	animations.clear();
	currentAnimation.reset();
}

void Animator::init() {
	sprite = &entity->getComponent<Sprites>();
	frameSize = { sprite->srcRect.w, sprite->srcRect.h };
	animations[ANIM_ENTRY] = std::make_shared<Animation>(ANIM_ENTRY);
	currentAnimation = animations.at(ANIM_ENTRY);
}

void Animator::update() {
	if (currentAnimation->loop ||
		sprite->srcRect.x != sprite->srcRect.w * (currentAnimation->frames - 1)) {
		int factor =
			(int)((SDL_GetTicks64() / currentAnimation->speed) % (2 * currentAnimation->frames));
		if (factor >= currentAnimation->frames) {
			factor -= currentAnimation->reversible ? (factor % currentAnimation->frames) * 2 + 1
												   : currentAnimation->frames;
		}
		sprite->srcRect.x = sprite->srcRect.w * factor;
	}
	if (adjMatrix.find(currentAnimation->id) == adjMatrix.end()) return;

	auto& connections = adjMatrix.at(currentAnimation->id);
	for (auto it = connections.begin(); it != connections.end(); it++) {
		if (!it->second.canTraverse()) continue;

		currentAnimation = animations.at(it->first);
		sprite->texture = currentAnimation->texture;
		sprite->srcRect.x = sprite->srcRect.y = 0;

		break;
	}
}

void Animator::draw() {}

void Animator::addAnimation(
	const std::string id, const char* texPath, int speed, const bool isLooping,
	const bool isReversible
) {
	animations[id] =
		std::make_shared<Animation>(id, frameSize, texPath, speed, isLooping, isReversible);
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
