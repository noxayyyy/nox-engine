#include "Transform.h"

Transform::Transform() : height(50), width(50), scale(0.6f), speed(240.0f) {
	pos.zero();
	initPos.zero();
}

Transform::Transform(float x, float y) : height(50), width(50), scale(0.6f), speed(240.0f) {
	initPos.x = pos.x = x;
	initPos.y = pos.y = y;
}

Transform::Transform(float scale) : height(50), width(50), speed(240.0f) {
	pos.zero();
	this->scale = scale;
}

Transform::Transform(float x, float y, int w, int h, float scale) : speed(240.0f) {
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

void Transform::rotate(Rotations rotation, bool anticlockwise) {
	switch (rotation) {
	case Rotations::NINETY:
		angle -= 90 * (anticlockwise - 1);
		break;
	case Rotations::ONE_EIGHTY:
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
