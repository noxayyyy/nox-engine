/**
 * @file Counters.h
 * @brief Defines UI components for displaying numerical data like FPS and points.
 */

#pragma once

#include "Text.h"
#include <SDL2/SDL_render.h>

/**
 * @brief A Text component that automatically calculates and displays the current FPS.
 */
struct FPS : public Text {
public:
	using Text::Text;

	int value; ///< The current FPS value.

	/**
	 * @brief Constructs an FPS counter.
	 * @param inStr The prefix string to display (e.g., "FPS: ").
	 */
	FPS(std::string inStr);
	~FPS();

	/**
	 * @brief Calculates the average FPS over a sample of frames.
	 * @return The average frames per second.
	 */
	float calcAvg();
	/**
	 * @brief Updates the FPS calculation and the displayed text.
	 */
	void update() override;
	/**
	 * @brief Resets the frame counter history.
	 */
	void reload() override;

private:
	float frameCounts[SAMPLE_COUNT];
	int frameIndex;
};

/**
 * @brief A Text component that displays a score or point value.
 */
struct Points : public Text {
public:
	using Text::Text;

	int value; ///< The numerical score value.

	/**
	 * @brief Constructs a Points counter.
	 * @param inStr The prefix string to display (e.g., "Score: ").
	 */
	Points(std::string inStr);
	~Points();

	/**
	 * @brief Updates the displayed text if the point value has changed.
	 */
	void update() override;
	/**
	 * @brief Resets the points value to its initial state.
	 */
	void reload() override;

private:
	int prevValue;
};
