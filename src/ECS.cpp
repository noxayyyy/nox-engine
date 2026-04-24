#include "ECS.h"
#include "Game.h"

// Entity Class
Entity::Entity(Manager& memManager, std::string _id) : manager(memManager) {
	id = _id;
}

void Entity::update() {
	if (!active) return;
	for (auto& x : components) {
		x->update();
	}
}

void Entity::draw() {
	if (!active) return;
	for (auto& x : components) {
		x->draw();
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
	for (auto& x : components) {
		// if (!active) return;
		x->reload();
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
	for (auto& e : entities) {
		if (!e) continue;
		e->update();
	}
}

void Manager::draw() {
	for (auto& e : entities) {
		e->draw();
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

	for (auto& x : entities) {
		x->refresh();
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
	for (auto& x : entities) {
		x->deleteAllComponents();
		x->disable();
	}
	refresh();
}
