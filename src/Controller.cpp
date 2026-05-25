#include "../include/Controller.h"

Controller::Controller() {}

Controller::~Controller() {
	transform = nullptr;
	collider = nullptr;
}

void Controller::init() {
	transform = &entity->addComponent<Transform>();
	collider = &entity->getComponent<Collider>();
	if (!collider) {
		throw std::runtime_error(
			"Unable to initialise Controller... Entity does not possess Collider component."
		);
	}
}

void Controller::update() {
	if (Game::getPaused()) {
		lastVel.zero();
	}
	lastVel = transform->vel;
	lastAngle = transform->angle;

	if (Game::getBtnState(5) == '1') {
		transform->vel.x = 0;
		transform->vel.y = -1;
		transform->setAngle(-90);
	}
	if (Game::getBtnState(4) == '1') {
		transform->vel.x = -1;
		transform->vel.y = 0;
		transform->setAngle(180);
	}
	if (Game::getBtnState(3) == '1') {
		transform->vel.x = 0;
		transform->vel.y = 1;
		transform->setAngle(90);
	}
	if (Game::getBtnState(2) == '1') {
		transform->vel.x = 1;
		transform->vel.y = 0;
		transform->setAngle(0);
	}

	if (lastVel == transform->vel) return;

	if (collider->isColliding(WALL_TAG)) {
		transform->vel = lastVel;
		transform->angle = lastAngle;
	}
}

void Controller::reload() {}
