#include "ECS.h"
#include "Game.h"

// Entity Class
Entity::Entity(Manager& memManager, std::string _id) : manager(memManager), active(false) {
	id = _id;
}

void Entity::update() {
	if (!active) return;
	for (auto it = components.begin(); it != components.end(); it++) {
		(*it)->update();
	}
}

void Entity::draw() {
	if (!active) return;
	for (auto it = components.begin(); it != components.end(); it++) {
		(*it)->draw();
	}
}

bool Entity::isActive() const {
	return active;
}

std::string Entity::getID() const {
	return id;
}

void Entity::enable() {
	active = true;
}

void Entity::disable() {
	active = false;
}

void Entity::refresh() {}

void Entity::reload() {
	for (auto it = components.begin(); it != components.end(); it++) {
		// if (!active) return;
		(*it)->reload();
	}
}

bool Entity::hasGroup(GroupID memGroup) {
	return groupBitSet[memGroup];
}

void Entity::delGroup(GroupID memGroup) {
	groupBitSet[memGroup] = false;
}

void Entity::addGroup(GroupID memGroup) {
	if (groupBitSet[memGroup]) return;

	groupBitSet[memGroup] = true;
	manager.addToGroup(this, memGroup);
}

void Entity::deleteAllComponents() {
	componentBitSet.reset();
	componentArray.fill(nullptr);
	components.clear();
	// for (auto& x : this->components) {
	// 	this->delComponent<decltype(x)>();
	// }
}

// Manager Class
Manager::Manager() {
	entities = std::vector<std::shared_ptr<Entity>>();
}

void Manager::update() {
	for (auto it = entities.begin(); it != entities.end(); it++) {
		if (!(*it)) continue;
		(*it)->update();
	}
}

void Manager::draw() {
	for (auto it = entities.begin(); it != entities.end(); it++) {
		(*it)->draw();
	}
}

void Manager::refreshGroups() {
	for (auto i(0u); i < MAX_GROUPS; i++) {
		auto& vec(groupedEntities[i]);
		vec.erase(
			std::remove_if(
				vec.begin(),
				vec.end(),
				[i](Entity* memEntity) { return !memEntity->isActive() || !memEntity->hasGroup(i); }
			),
			vec.end()
		);
	}
}

void Manager::refresh() {
	refreshGroups();

	entities.erase(
		std::remove_if(
			entities.begin(),
			entities.end(),
			[](const std::shared_ptr<Entity>& mEntity) { return !mEntity->isActive(); }
		),
		entities.end()
	);

	for (auto it = entities.begin(); it != entities.end(); it++) {
		(*it)->refresh();
	}
}

void Manager::addToGroup(Entity* memEntity, GroupID memGroup) {
	groupedEntities[memGroup].emplace_back(memEntity);
}

std::vector<Entity*>& Manager::getGroupMembers(GroupID memGroup) {
	return groupedEntities[memGroup];
}

Entity& Manager::addEntity(std::string id) {
	std::shared_ptr<Entity> sPtr = std::make_shared<Entity>(*this, id);
	entities.emplace_back(sPtr);
	return *sPtr;
}

void Manager::destroyAll() {
	for (auto it = entities.begin(); it != entities.end(); it++) {
		(*it)->deleteAllComponents();
		(*it)->disable();
	}
	refresh();
}
