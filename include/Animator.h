/**
 * @file Animator.h
 * @brief Defines a state-machine-based animation component for entities.
 */

#include "Sprites.h"
#include <memory>
#include <unordered_map>

/**
 * @brief Manages sprite sheet animations and transitions between them using a state machine.
 * @details This component controls an entity's sprite to play different animation sequences.
 * It uses an adjacency matrix to define transitions (Edges) between animations based on conditions.
 */
struct Animator : public Component {
public:
	/**
	 * @brief Represents a single, self-contained animation sequence.
	 */
	struct Animation {
		const char* id;          ///< Unique identifier for the animation.
		int frames;              ///< The number of frames in the sprite sheet.
		SDL_Texture* texture;    ///< The texture containing the animation frames.
		int speed = 100;         ///< The delay in milliseconds between frames.
		bool loop;               ///< Whether the animation should loop upon completion.
		bool reversible = false; ///< If true, the animation plays forwards then backwards.

		Animation();
		/**
		 * @brief Constructs an Animation with a given ID.
		 * @param id The unique identifier for this animation.
		 */
		Animation(const char* id);
		/**
		 * @brief Constructs and initializes a complete Animation object.
		 * @param id The unique identifier for this animation.
		 * @param frameSize The dimensions (width, height) of a single frame.
		 * @param texPath The file path to the sprite sheet texture.
		 * @param speed The delay in milliseconds between frames.
		 * @param isLooping Whether the animation should loop.
		 * @param isReversible Whether the animation should play in reverse after finishing.
		 */
		Animation(
			const char* id, SDL_Point frameSize, const char* texPath, int speed = 100,
			bool isLooping = true, bool isReversible = false
		);
		~Animation();
	};

	/**
	 * @brief Defines a transition edge between two animations in the state machine.
	 */
	struct Edge {
		std::vector<std::shared_ptr<bool>> conditions; ///< A list of conditions that must all be
													   ///< true for this edge to be traversed.

		Edge();
		/**
		 * @brief Constructs an Edge with a set of transition conditions.
		 * @param conditions A vector of shared pointers to booleans.
		 */
		Edge(std::vector<std::shared_ptr<bool>> conditions);
		~Edge();

		/**
		 * @brief Checks if all conditions for traversing this edge are met.
		 * @return True if the transition can occur, false otherwise.
		 */
		const bool canTraverse() const;
	};

	Animator();
	~Animator();

	/**
	 * @brief Initializes the Animator component, acquiring the entity's Sprite component.
	 */
	void init() override;
	/**
	 * @brief Updates the current animation state, checking for transitions and advancing the frame.
	 */
	void update() override;
	/**
	 * @brief Draws the current frame of the active animation.
	 */
	void draw() override;

	/**
	 * @brief Adds a new animation state to the animator's state machine.
	 * @param id The unique identifier for the new animation.
	 * @param texPath The file path to the sprite sheet texture.
	 * @param speed The delay in milliseconds between frames.
	 * @param isLooping Whether the animation should loop.
	 * @param isReversible Whether the animation should play in reverse after finishing.
	 */
	void addAnimation(
		const char* id, const char* texPath, int speed = 100, const bool isLooping = true,
		const bool isReversible = false
	);
	/**
	 * @brief Defines a conditional transition between two animations.
	 * @param idFrom The ID of the source animation state.
	 * @param idTo The ID of the destination animation state.
	 * @param conditions A vector of pointers to booleans that must be true to transition.
	 */
	void
	addEdge(const char* idFrom, const char* idTo, std::vector<std::shared_ptr<bool>> conditions);
	/**
	 * @brief Gets the ID of the currently playing animation.
	 * @return A string representing the ID of the current animation.
	 */
	std::string getCurrAnimID();

private:
	std::shared_ptr<Animation> currentAnimation;

	Sprites* sprite;
	SDL_Point frameSize;

	std::unordered_map<const char*, std::shared_ptr<Animation>> animations;
	std::unordered_map<const char*, std::unordered_map<const char*, Edge>> adjMatrix;
};
