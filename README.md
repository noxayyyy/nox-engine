# Nox Engine

A lightweight, Entity-Component-System (ECS) based 2D game engine built with C++ and SDL2. 

Nox Engine is designed to be highly modular and easy to drop into projects as a Git submodule. It compiles into a static library (`libnox_engine.a`) and provides a robust foundation for 2D game development, including scene management, state-machine animations, and collision detection.

## ✨ Features
* **Core ECS Architecture:** Fast and flexible Entity-Component-System for managing game objects.
* **Scene Management:** Layered scene system supporting background/UI panels and state pausing.
* **Animation System:** State-machine-based animator with transition edges and conditions.
* **Collision Detection:** AABB collision detection with trigger volumes and velocity consideration.
* **UI & Text:** Built-in interactive buttons, dynamic text rendering, and auto-updating UI counters (FPS, Score).
* **Input Handling:** Keyboard controllers and global mouse tracking.

## 🛠️ Prerequisites
To build the engine, you need a C++ compiler (`clang++` by default) and the SDL2 development libraries.

**Ubuntu/Debian:**
```bash
sudo apt-get install clang make libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev libsdl2-mixer-dev
```
**macOS (Homebrew):**
```bash
brew install sdl2 sdl2_image sdl2_ttf sdl2_mixer
```

## 🏗️ Building the Engine
The Engine is typically built automatically by the parent project's Makefile, but you can build it standalone to generate the static library:

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/YOUR_ENGINE_REPO.git
cd YOUR_ENGINE_REPO

# Compile the static library (libnox_engine.a)
make

# Clean build files
make clean
```

## 📚 Documentation
The engine uses Doxygen for automated documentation. 

**[View the Live API Documentation Here](https://noxayyyy.github.io/nox-engine/)**

To generate the documentation locally:
1. Ensure Doxygen and Graphviz are installed.
2. Run `doxygen Doxyfile` in the root directory.
3. Open `docs/html/index.html` in your web browser.
