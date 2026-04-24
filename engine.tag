<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile doxygen_version="1.13.2">
  <compound kind="file">
    <name>Animator.h</name>
    <path>include/</path>
    <filename>Animator_8h.html</filename>
    <includes id="Sprites_8h" name="Sprites.h" local="yes" import="no" module="no" objc="no">Sprites.h</includes>
    <class kind="struct">Animator</class>
    <class kind="struct">Animator::Animation</class>
    <class kind="struct">Animator::Edge</class>
  </compound>
  <compound kind="file">
    <name>Button.h</name>
    <path>include/</path>
    <filename>Button_8h.html</filename>
    <includes id="Collider_8h" name="Collider.h" local="yes" import="no" module="no" objc="no">Collider.h</includes>
    <includes id="MouseTracker_8h" name="MouseTracker.h" local="yes" import="no" module="no" objc="no">MouseTracker.h</includes>
    <includes id="Text_8h" name="Text.h" local="yes" import="no" module="no" objc="no">Text.h</includes>
    <includes id="TextureManager_8h" name="TextureManager.h" local="yes" import="no" module="no" objc="no">TextureManager.h</includes>
    <class kind="struct">Button</class>
    <member kind="variable">
      <type>Manager</type>
      <name>manager</name>
      <anchorfile>Button_8h.html</anchorfile>
      <anchor>a8b88105956ea929e3c74c65791e92c6f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>Collider.h</name>
    <path>include/</path>
    <filename>Collider_8h.html</filename>
    <includes id="Constants_8h" name="Constants.h" local="yes" import="no" module="no" objc="no">Constants.h</includes>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <includes id="Transform_8h" name="Transform.h" local="yes" import="no" module="no" objc="no">Transform.h</includes>
    <class kind="struct">Collider</class>
    <member kind="variable">
      <type>std::vector&lt; Entity * &gt;</type>
      <name>colliders</name>
      <anchorfile>Collider_8h.html</anchorfile>
      <anchor>a28f491721073d8d963d518e00b788d0d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>Components.h</name>
    <path>include/</path>
    <filename>Components_8h.html</filename>
    <includes id="Animator_8h" name="Animator.h" local="yes" import="no" module="no" objc="no">Animator.h</includes>
    <includes id="Button_8h" name="Button.h" local="yes" import="no" module="no" objc="no">Button.h</includes>
    <includes id="Collider_8h" name="Collider.h" local="yes" import="no" module="no" objc="no">Collider.h</includes>
    <includes id="Controller_8h" name="Controller.h" local="yes" import="no" module="no" objc="no">Controller.h</includes>
    <includes id="Counters_8h" name="Counters.h" local="yes" import="no" module="no" objc="no">Counters.h</includes>
    <includes id="MouseTracker_8h" name="MouseTracker.h" local="yes" import="no" module="no" objc="no">MouseTracker.h</includes>
    <includes id="Sprites_8h" name="Sprites.h" local="yes" import="no" module="no" objc="no">Sprites.h</includes>
    <includes id="Text_8h" name="Text.h" local="yes" import="no" module="no" objc="no">Text.h</includes>
    <includes id="Tile_8h" name="Tile.h" local="yes" import="no" module="no" objc="no">Tile.h</includes>
    <includes id="Transform_8h" name="Transform.h" local="yes" import="no" module="no" objc="no">Transform.h</includes>
  </compound>
  <compound kind="file">
    <name>Constants.h</name>
    <path>include/</path>
    <filename>Constants_8h.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>GroupLabels</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>ac691f71a1e791a19456911d213a8143f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MAP</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>ac691f71a1e791a19456911d213a8143fa4cafa5feda04184537b4d7d346e1e89b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PACMAN</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>ac691f71a1e791a19456911d213a8143fa6c3e87a9198a1e2acc74b59d20e20ea4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GHOSTS</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>ac691f71a1e791a19456911d213a8143fa3d223a154b96a31b5f2de5c61e2b2ed9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>GHOST_BAR</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>ac691f71a1e791a19456911d213a8143fa4ff7759c640d7a6ec12fb6fdb5cd6788</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PELLETS</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>ac691f71a1e791a19456911d213a8143fa7f503b6a990026f84f6d17e3310f8429</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>COLLIDERS</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>ac691f71a1e791a19456911d213a8143fa99d4a8fe0858416bfc253266896427b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>BUTTONS</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>ac691f71a1e791a19456911d213a8143fac0df8ae7b40bd9e09eeffba1facc72dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>FPS_CAP</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>a22d0558ee434b9d1d225c989de09d44e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const float</type>
      <name>FRAME_DELAY</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>a8dc5ff637d6956de293b541e44a9ed4e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const std::size_t</type>
      <name>MAX_COMPONENTS</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>a17f156982a410ef4a1cafb028b3040f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const std::size_t</type>
      <name>MAX_GROUPS</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>ad59744fbb5d5fe498c1422756801fce6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const SDL_Point</type>
      <name>WINDOW_SIZE</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>a9933eff67efeb4a374d4ec801eb7c44a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>MAX_SCENE_COUNT</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>a8b149dbb25cf3c7b2b32747b4c61d451</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>SAMPLE_COUNT</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>a191736070a43725b355e77d1f5aca17c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const std::string</type>
      <name>MOUSE_TAG</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>aacda571ab5709e1d30f29dc301c13aec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const std::string</type>
      <name>WALL_TAG</name>
      <anchorfile>Constants_8h.html</anchorfile>
      <anchor>af957daf65130df0f33ffdb3f1a97a4aa</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>Controller.h</name>
    <path>include/</path>
    <filename>Controller_8h.html</filename>
    <includes id="Collider_8h" name="Collider.h" local="yes" import="no" module="no" objc="no">Collider.h</includes>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <class kind="struct">Controller</class>
  </compound>
  <compound kind="file">
    <name>Counters.h</name>
    <path>include/</path>
    <filename>Counters_8h.html</filename>
    <includes id="Text_8h" name="Text.h" local="yes" import="no" module="no" objc="no">Text.h</includes>
    <class kind="struct">FPS</class>
    <class kind="struct">Points</class>
  </compound>
  <compound kind="file">
    <name>ECS.h</name>
    <path>include/</path>
    <filename>ECS_8h.html</filename>
    <includes id="Constants_8h" name="Constants.h" local="yes" import="no" module="no" objc="no">Constants.h</includes>
    <class kind="struct">Component</class>
    <class kind="struct">Entity</class>
    <class kind="struct">Manager</class>
    <member kind="typedef">
      <type>std::size_t</type>
      <name>ComponentID</name>
      <anchorfile>ECS_8h.html</anchorfile>
      <anchor>a7b5b328beaf99c4cdb76fc8ce54ce91d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::size_t</type>
      <name>GroupID</name>
      <anchorfile>ECS_8h.html</anchorfile>
      <anchor>af05108a2e67a61a15c3f17ae813a3756</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::bitset&lt; MAX_COMPONENTS &gt;</type>
      <name>ComponentBitSet</name>
      <anchorfile>ECS_8h.html</anchorfile>
      <anchor>a3e96c0643a5277139a28fe8168164c93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::array&lt; std::shared_ptr&lt; Component &gt;, MAX_COMPONENTS &gt;</type>
      <name>ComponentArray</name>
      <anchorfile>ECS_8h.html</anchorfile>
      <anchor>a98e60333e8d716507315fc4d8a435cfe</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::bitset&lt; MAX_GROUPS &gt;</type>
      <name>GroupBitSet</name>
      <anchorfile>ECS_8h.html</anchorfile>
      <anchor>a8657c60c9c4988cd80991c6dbe6cfcbf</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>ComponentID</type>
      <name>getNewComponentTypeID</name>
      <anchorfile>ECS_8h.html</anchorfile>
      <anchor>a506292c7895583d174f94fd9b1f5b1e3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ComponentID</type>
      <name>getComponentTypeID</name>
      <anchorfile>ECS_8h.html</anchorfile>
      <anchor>a6618a945314f27cb6b96b1a770a33c36</anchor>
      <arglist>() noexcept</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>Game.h</name>
    <path>include/</path>
    <filename>Game_8h.html</filename>
    <includes id="Constants_8h" name="Constants.h" local="yes" import="no" module="no" objc="no">Constants.h</includes>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <includes id="Vector2D_8h" name="Vector2D.h" local="yes" import="no" module="no" objc="no">Vector2D.h</includes>
    <class kind="class">Game</class>
  </compound>
  <compound kind="file">
    <name>MouseTracker.h</name>
    <path>include/</path>
    <filename>MouseTracker_8h.html</filename>
    <includes id="Collider_8h" name="Collider.h" local="yes" import="no" module="no" objc="no">Collider.h</includes>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <includes id="Transform_8h" name="Transform.h" local="yes" import="no" module="no" objc="no">Transform.h</includes>
    <class kind="struct">MouseTracker</class>
  </compound>
  <compound kind="file">
    <name>Scene.h</name>
    <path>include/</path>
    <filename>Scene_8h.html</filename>
    <includes id="Collider_8h" name="Collider.h" local="yes" import="no" module="no" objc="no">Collider.h</includes>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <class kind="struct">Scene</class>
  </compound>
  <compound kind="file">
    <name>SceneManager.h</name>
    <path>include/</path>
    <filename>SceneManager_8h.html</filename>
    <includes id="Scene_8h" name="Scene.h" local="yes" import="no" module="no" objc="no">Scene.h</includes>
    <class kind="struct">SceneManager</class>
    <member kind="variable">
      <type>Manager</type>
      <name>manager</name>
      <anchorfile>SceneManager_8h.html</anchorfile>
      <anchor>a8b88105956ea929e3c74c65791e92c6f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>Sprites.h</name>
    <path>include/</path>
    <filename>Sprites_8h.html</filename>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <includes id="TextureManager_8h" name="TextureManager.h" local="yes" import="no" module="no" objc="no">TextureManager.h</includes>
    <includes id="Transform_8h" name="Transform.h" local="yes" import="no" module="no" objc="no">Transform.h</includes>
    <class kind="struct">Sprites</class>
  </compound>
  <compound kind="file">
    <name>Text.h</name>
    <path>include/</path>
    <filename>Text_8h.html</filename>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <includes id="TextureManager_8h" name="TextureManager.h" local="yes" import="no" module="no" objc="no">TextureManager.h</includes>
    <class kind="struct">Text</class>
  </compound>
  <compound kind="file">
    <name>TextureManager.h</name>
    <path>include/</path>
    <filename>TextureManager_8h.html</filename>
    <includes id="Game_8h" name="Game.h" local="yes" import="no" module="no" objc="no">Game.h</includes>
    <class kind="struct">TextureManager</class>
  </compound>
  <compound kind="file">
    <name>Tile.h</name>
    <path>include/</path>
    <filename>Tile_8h.html</filename>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <includes id="Sprites_8h" name="Sprites.h" local="yes" import="no" module="no" objc="no">Sprites.h</includes>
    <includes id="Transform_8h" name="Transform.h" local="yes" import="no" module="no" objc="no">Transform.h</includes>
    <class kind="struct">Tile</class>
  </compound>
  <compound kind="file">
    <name>Transform.h</name>
    <path>include/</path>
    <filename>Transform_8h.html</filename>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <includes id="Game_8h" name="Game.h" local="yes" import="no" module="no" objc="no">Game.h</includes>
    <includes id="Vector2D_8h" name="Vector2D.h" local="yes" import="no" module="no" objc="no">Vector2D.h</includes>
    <class kind="struct">Transform</class>
  </compound>
  <compound kind="file">
    <name>Vector2D.h</name>
    <path>include/</path>
    <filename>Vector2D_8h.html</filename>
    <class kind="struct">Vector2D</class>
  </compound>
  <compound kind="file">
    <name>README.md</name>
    <path></path>
    <filename>README_8md.html</filename>
  </compound>
  <compound kind="file">
    <name>Animator.cpp</name>
    <path>src/</path>
    <filename>Animator_8cpp.html</filename>
    <includes id="Animator_8h" name="Animator.h" local="yes" import="no" module="no" objc="no">Animator.h</includes>
    <includes id="Constants_8h" name="Constants.h" local="yes" import="no" module="no" objc="no">Constants.h</includes>
  </compound>
  <compound kind="file">
    <name>Button.cpp</name>
    <path>src/</path>
    <filename>Button_8cpp.html</filename>
    <includes id="Button_8h" name="Button.h" local="yes" import="no" module="no" objc="no">Button.h</includes>
  </compound>
  <compound kind="file">
    <name>Collider.cpp</name>
    <path>src/</path>
    <filename>Collider_8cpp.html</filename>
    <includes id="Collider_8h" name="Collider.h" local="yes" import="no" module="no" objc="no">Collider.h</includes>
  </compound>
  <compound kind="file">
    <name>Controller.cpp</name>
    <path>src/</path>
    <filename>Controller_8cpp.html</filename>
    <includes id="Controller_8h" name="Controller.h" local="yes" import="no" module="no" objc="no">Controller.h</includes>
  </compound>
  <compound kind="file">
    <name>Counters.cpp</name>
    <path>src/</path>
    <filename>Counters_8cpp.html</filename>
    <includes id="Counters_8h" name="Counters.h" local="yes" import="no" module="no" objc="no">Counters.h</includes>
  </compound>
  <compound kind="file">
    <name>ECS.cpp</name>
    <path>src/</path>
    <filename>ECS_8cpp.html</filename>
    <includes id="ECS_8h" name="ECS.h" local="yes" import="no" module="no" objc="no">ECS.h</includes>
    <includes id="Game_8h" name="Game.h" local="yes" import="no" module="no" objc="no">Game.h</includes>
  </compound>
  <compound kind="file">
    <name>MouseTracker.cpp</name>
    <path>src/</path>
    <filename>MouseTracker_8cpp.html</filename>
    <includes id="MouseTracker_8h" name="MouseTracker.h" local="yes" import="no" module="no" objc="no">MouseTracker.h</includes>
  </compound>
  <compound kind="file">
    <name>Scene.cpp</name>
    <path>src/</path>
    <filename>Scene_8cpp.html</filename>
    <includes id="Scene_8h" name="Scene.h" local="yes" import="no" module="no" objc="no">Scene.h</includes>
  </compound>
  <compound kind="file">
    <name>SceneManager.cpp</name>
    <path>src/</path>
    <filename>SceneManager_8cpp.html</filename>
    <includes id="SceneManager_8h" name="SceneManager.h" local="yes" import="no" module="no" objc="no">SceneManager.h</includes>
    <includes id="Constants_8h" name="Constants.h" local="yes" import="no" module="no" objc="no">Constants.h</includes>
  </compound>
  <compound kind="file">
    <name>Sprites.cpp</name>
    <path>src/</path>
    <filename>Sprites_8cpp.html</filename>
    <includes id="Sprites_8h" name="Sprites.h" local="yes" import="no" module="no" objc="no">Sprites.h</includes>
  </compound>
  <compound kind="file">
    <name>Text.cpp</name>
    <path>src/</path>
    <filename>Text_8cpp.html</filename>
    <includes id="Text_8h" name="Text.h" local="yes" import="no" module="no" objc="no">Text.h</includes>
  </compound>
  <compound kind="file">
    <name>TextureManager.cpp</name>
    <path>src/</path>
    <filename>TextureManager_8cpp.html</filename>
    <includes id="TextureManager_8h" name="TextureManager.h" local="yes" import="no" module="no" objc="no">TextureManager.h</includes>
  </compound>
  <compound kind="file">
    <name>Tile.cpp</name>
    <path>src/</path>
    <filename>Tile_8cpp.html</filename>
    <includes id="Tile_8h" name="Tile.h" local="yes" import="no" module="no" objc="no">Tile.h</includes>
  </compound>
  <compound kind="file">
    <name>Transform.cpp</name>
    <path>src/</path>
    <filename>Transform_8cpp.html</filename>
    <includes id="Transform_8h" name="Transform.h" local="yes" import="no" module="no" objc="no">Transform.h</includes>
  </compound>
  <compound kind="struct">
    <name>Animator::Animation</name>
    <filename>structAnimator_1_1Animation.html</filename>
    <member kind="function">
      <type></type>
      <name>Animation</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>ac20e3219d81e062dad817e2895b4a5f2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Animation</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>ab56e862376a0f56cf99544761475d31a</anchor>
      <arglist>(const char *id)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Animation</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>a853555faca34e37e4135b31b02d998dc</anchor>
      <arglist>(const char *id, SDL_Point frameSize, const char *texPath, int speed=100, bool isLooping=true, bool isReversible=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Animation</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>aa7897ab04165c1d511e934292f34d47f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>id</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>acd06cfe73803393f46c8edeca6230579</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>frames</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>a601ea6202862535ec720150aecab37f8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SDL_Texture *</type>
      <name>texture</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>a7978793e8615eb44486843a0ea72666b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>speed</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>a7c1e3cda189e256fcc68279e11937fd7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>loop</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>a263600b19edbf1bf843c7cfc584cb1a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>reversible</name>
      <anchorfile>structAnimator_1_1Animation.html</anchorfile>
      <anchor>a309d420a31e2da9522188aec21ff5b6f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Animator</name>
    <filename>structAnimator.html</filename>
    <base>Component</base>
    <class kind="struct">Animator::Animation</class>
    <class kind="struct">Animator::Edge</class>
    <member kind="function">
      <type></type>
      <name>Animator</name>
      <anchorfile>structAnimator.html</anchorfile>
      <anchor>a701eeb9283612be2027425efb06bbff7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Animator</name>
      <anchorfile>structAnimator.html</anchorfile>
      <anchor>a5af4797549f9f466a88657899e17c6ab</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>structAnimator.html</anchorfile>
      <anchor>a399c69a70f729b5a9f5d3cd463da020b</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structAnimator.html</anchorfile>
      <anchor>a59b9903253d8ce084048f7600e956735</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw</name>
      <anchorfile>structAnimator.html</anchorfile>
      <anchor>a23e378fb2dc1cb48c685015ddc885c29</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addAnimation</name>
      <anchorfile>structAnimator.html</anchorfile>
      <anchor>a48a95ea818a364fbd5fd2140b4120cf1</anchor>
      <arglist>(const char *id, const char *texPath, int speed=100, const bool isLooping=true, const bool isReversible=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addEdge</name>
      <anchorfile>structAnimator.html</anchorfile>
      <anchor>a11922ec826afced3bfac9098fa55b8ea</anchor>
      <arglist>(const char *idFrom, const char *idTo, std::vector&lt; std::shared_ptr&lt; bool &gt; &gt; conditions)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getCurrAnimID</name>
      <anchorfile>structAnimator.html</anchorfile>
      <anchor>a05dbf02b17e983baa9984133df8900e9</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Button</name>
    <filename>structButton.html</filename>
    <base>Component</base>
    <member kind="function">
      <type></type>
      <name>Button</name>
      <anchorfile>structButton.html</anchorfile>
      <anchor>ab254bfae7efdeabe2a474d39b260c19b</anchor>
      <arglist>(std::string inStr, int x, int y, int w, int h, float scale, SDL_Colour defColour, SDL_Colour hoverColour, SDL_Colour textColour, std::function&lt; void()&gt; func)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Button</name>
      <anchorfile>structButton.html</anchorfile>
      <anchor>a6af6a898011243f6e8e9c2ec6a41a4cf</anchor>
      <arglist>(std::string inStr, int x, int y, int w, int h, float scale, std::function&lt; void()&gt; func)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Button</name>
      <anchorfile>structButton.html</anchorfile>
      <anchor>a4c24ca26da1399b4ece25bdd05d27d98</anchor>
      <arglist>(std::string inStr, int x, int y, int w, int h, std::function&lt; void()&gt; func)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Button</name>
      <anchorfile>structButton.html</anchorfile>
      <anchor>a2a001eb9c3cc8ae54768a850dd345002</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>structButton.html</anchorfile>
      <anchor>a94132a198aa03cd94f0337d29109b20c</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structButton.html</anchorfile>
      <anchor>abda97f1ae8e081da3dbd0b77a27cad9d</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reload</name>
      <anchorfile>structButton.html</anchorfile>
      <anchor>ac73fe4dc081674c116aabe8145386332</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw</name>
      <anchorfile>structButton.html</anchorfile>
      <anchor>af4d14cf544d8e0620f4ffcd7984103f7</anchor>
      <arglist>() override</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Collider</name>
    <filename>structCollider.html</filename>
    <base>Component</base>
    <member kind="function">
      <type></type>
      <name>Collider</name>
      <anchorfile>structCollider.html</anchorfile>
      <anchor>a80a564c1cb6930ffc7810f559381a5e4</anchor>
      <arglist>(std::string tag, std::function&lt; void(Collider &amp;other)&gt; onCollision, bool isTrigger=false, bool isStatic=false, bool considerVel=false, bool isUi=false)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Collider</name>
      <anchorfile>structCollider.html</anchorfile>
      <anchor>a923208f36ba5546c434755626cf04181</anchor>
      <arglist>(std::string tag)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Collider</name>
      <anchorfile>structCollider.html</anchorfile>
      <anchor>a564acde9860f875a32a6638c573d87be</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>structCollider.html</anchorfile>
      <anchor>aed04ad82be15bcba1d3dc6a09f76dae6</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structCollider.html</anchorfile>
      <anchor>aec6345e2c307d0a680360352f35e1779</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onCollision</name>
      <anchorfile>structCollider.html</anchorfile>
      <anchor>a6b79610fbf8052480ee21ca2f7b3fbd5</anchor>
      <arglist>(Collider &amp;other)</arglist>
    </member>
    <member kind="function">
      <type>const bool</type>
      <name>isColliding</name>
      <anchorfile>structCollider.html</anchorfile>
      <anchor>a6b742fe2cb5dd449723ff4148de4a959</anchor>
      <arglist>(std::string collTag)</arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>tag</name>
      <anchorfile>structCollider.html</anchorfile>
      <anchor>a47553d89c2a08d0df50e2e4934572902</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Component</name>
    <filename>structComponent.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>init</name>
      <anchorfile>structComponent.html</anchorfile>
      <anchor>a162f8cdc070537a71f2ad0b5e763b86f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>update</name>
      <anchorfile>structComponent.html</anchorfile>
      <anchor>a2c9d95ea989f2d69381ad9b6728b51ae</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>reload</name>
      <anchorfile>structComponent.html</anchorfile>
      <anchor>abd8b82630598fe8a13318ecc13a5c159</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>draw</name>
      <anchorfile>structComponent.html</anchorfile>
      <anchor>a2fc563e2f7e0c20902fc4f9d5e69e02a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Component</name>
      <anchorfile>structComponent.html</anchorfile>
      <anchor>a2e9aa4348314d981f05f67397ad2f872</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>Entity *</type>
      <name>entity</name>
      <anchorfile>structComponent.html</anchorfile>
      <anchor>a6acb3f00c9d114d961c8763ede390d2c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Controller</name>
    <filename>structController.html</filename>
    <base>Component</base>
    <member kind="function">
      <type></type>
      <name>Controller</name>
      <anchorfile>structController.html</anchorfile>
      <anchor>a95c56822d667e94b031451729ce069a9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Controller</name>
      <anchorfile>structController.html</anchorfile>
      <anchor>a0ab87934c4f7a266cfdb86e0f36bc1b5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>structController.html</anchorfile>
      <anchor>afd3de74c4b224affca8fb73bc75374a9</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>updateKeyDown</name>
      <anchorfile>structController.html</anchorfile>
      <anchor>a5a7be803734580a81e16cf0fe3a47e54</anchor>
      <arglist>(SDL_Keycode key)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>updateKeyUp</name>
      <anchorfile>structController.html</anchorfile>
      <anchor>af7e5d63f1095f76c5c5deac68a42dbd3</anchor>
      <arglist>(SDL_Keycode key)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structController.html</anchorfile>
      <anchor>a612e598a359e9327b6bb625c7b377ee7</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reload</name>
      <anchorfile>structController.html</anchorfile>
      <anchor>a66dcd5056f1c90515405d4a77f86dd67</anchor>
      <arglist>() override</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Animator::Edge</name>
    <filename>structAnimator_1_1Edge.html</filename>
    <member kind="function">
      <type></type>
      <name>Edge</name>
      <anchorfile>structAnimator_1_1Edge.html</anchorfile>
      <anchor>ad85e2e0d8036a2ff44c31354bf612033</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Edge</name>
      <anchorfile>structAnimator_1_1Edge.html</anchorfile>
      <anchor>a51ad0f47db57c06082a3af8569483d75</anchor>
      <arglist>(std::vector&lt; std::shared_ptr&lt; bool &gt; &gt; conditions)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Edge</name>
      <anchorfile>structAnimator_1_1Edge.html</anchorfile>
      <anchor>a2f3e19b39df64d3a51e9d87fb9f38c08</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const bool</type>
      <name>canTraverse</name>
      <anchorfile>structAnimator_1_1Edge.html</anchorfile>
      <anchor>a58af165137d9797b872f07b80584e907</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; std::shared_ptr&lt; bool &gt; &gt;</type>
      <name>conditions</name>
      <anchorfile>structAnimator_1_1Edge.html</anchorfile>
      <anchor>a8f36bd0d7382ff64a167ecbabc2439d0</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Entity</name>
    <filename>structEntity.html</filename>
    <member kind="function">
      <type></type>
      <name>Entity</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a4deb453bd9d9f49c9ec3c80816dc6aa8</anchor>
      <arglist>(Manager &amp;memManager, std::string _id)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a00b6eeaf99b35c8f8b10b5fbfc1baf4f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a7666f416dd0d1fce0f1133f78df44476</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isActive</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>aea1c1568b4123d989c5310697030ad77</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getID</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>acf456649975d568c848741a38bf3fa1f</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>enable</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a020b55925e09a5f6892b61a07d9ac42a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>disable</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a1a4a3c76da92e326a7a9b701ccdd570e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>refresh</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>aabcc7161ef99ca8dbe5d68f95af59a42</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reload</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a8f7c3e30f4e93df3ae2f14501e705f23</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasGroup</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a31e0aa9b0fca96c50ac32c366438cccd</anchor>
      <arglist>(GroupID memGroup)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>delGroup</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a6c56a84be807fa655c42141d982bef54</anchor>
      <arglist>(GroupID memGroup)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addGroup</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>aaee4506fc67f002244c8ad2adc92417c</anchor>
      <arglist>(GroupID memGroup)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasComponent</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>aa622a8d79153a90d0e3b9b992ca2d38b</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>delComponent</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a0c59911f0b4747b26e004796d5a9f85d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deleteAllComponents</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>a43953614bae5e98da168015ec31f994a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>T &amp;</type>
      <name>addComponent</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>aafe23d7d7ea7f427ca40454edcae460e</anchor>
      <arglist>(TArgs &amp;&amp;... mArgs)</arglist>
    </member>
    <member kind="function">
      <type>T &amp;</type>
      <name>getComponent</name>
      <anchorfile>structEntity.html</anchorfile>
      <anchor>ad5ce9d4246498a5a2ffd163a2d38c98f</anchor>
      <arglist>() const</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>FPS</name>
    <filename>structFPS.html</filename>
    <base>Text</base>
    <member kind="function">
      <type></type>
      <name>FPS</name>
      <anchorfile>structFPS.html</anchorfile>
      <anchor>a13e40904f5a2cb6a2909d144e29a0cf4</anchor>
      <arglist>(std::string inStr)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~FPS</name>
      <anchorfile>structFPS.html</anchorfile>
      <anchor>ae9c26e732f0773feaacd6c812db04e88</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>calcAvg</name>
      <anchorfile>structFPS.html</anchorfile>
      <anchor>aebad3ebf6b14fbf70a5f2b8a7d1e1b84</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structFPS.html</anchorfile>
      <anchor>a2eb4adf219fe41837ef4e48ff4ada160</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reload</name>
      <anchorfile>structFPS.html</anchorfile>
      <anchor>adfc6d925757aafc98ea17e9540b866df</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>structFPS.html</anchorfile>
      <anchor>af0a355f99999e8690c9d450f9464bfe3</anchor>
      <arglist>(std::string inStr, int x, int y, float scale, SDL_Color color)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>structFPS.html</anchorfile>
      <anchor>a5ecdd4b00938ce0c10f14fa52a1f8a88</anchor>
      <arglist>(std::string inStr, int x, int y, float scale)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>structFPS.html</anchorfile>
      <anchor>a3708b595d0ef813e44b22c07bed5c34a</anchor>
      <arglist>(std::string inStr, int x, int y)</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>value</name>
      <anchorfile>structFPS.html</anchorfile>
      <anchor>a56699d62767d20dd0732f31025839c94</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Game</name>
    <filename>classGame.html</filename>
    <member kind="function">
      <type></type>
      <name>Game</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>ad59df6562a58a614fda24622d3715b65</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Game</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>ae3d112ca6e0e55150d2fdbc704474530</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>a6fb6ab188f447a0b1448f77426a2ad79</anchor>
      <arglist>(const char *title, int xpos, int ypos, int width, int height, bool fullscreen)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>handleEvents</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>adb5563f62c0c82e3e42ec36501aa5698</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ghostSpawn</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>adbbce2f78e1de148e187a4bc70b493d7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>a79df6376b332d63c9eca0dcee30305c3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>render</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>a15ddd769261d923827a3cdf41499c843</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clean</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>ad4f36a72a2d06696f7973788606f57fc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>running</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>afd9af52dcc5835f2a8c37f441a256b9d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>setPause</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>a474f21af42dbf8a9644a8472af45b611</anchor>
      <arglist>(bool pause)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static const bool</type>
      <name>getPaused</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>aa153f0da6707884d25383acc9fd711f1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static float</type>
      <name>deltaTime</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>ad918e31c1644966465f822d912585f16</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static float</type>
      <name>timeScale</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>aa67a1eb6b517d48fc49bf39a2477c35d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static SDL_Event</type>
      <name>event</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>ac50bda5dab77dc40a78db21a883d23b3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static SDL_Renderer *</type>
      <name>renderer</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>ae5164c37c0dc74cfb56041174017bf57</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static SDL_Point</type>
      <name>mouseCoords</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>acec487bb7f3db1ca0d4bdcfff1776bdb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static bool</type>
      <name>mouseButtonPressed</name>
      <anchorfile>classGame.html</anchorfile>
      <anchor>a2a7362eac9054b5735967829046edb7d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Manager</name>
    <filename>structManager.html</filename>
    <member kind="function">
      <type></type>
      <name>Manager</name>
      <anchorfile>structManager.html</anchorfile>
      <anchor>a1658ff9f18e38ccd9cb8b0b371b9c20b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structManager.html</anchorfile>
      <anchor>af43da42550bd9746c5ea61a6aeee80de</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw</name>
      <anchorfile>structManager.html</anchorfile>
      <anchor>ad688d8d92b4d0c1049913500ca9ba9f3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>refreshGroups</name>
      <anchorfile>structManager.html</anchorfile>
      <anchor>a91664ffe84b1acc07269ce65eb504d79</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>refresh</name>
      <anchorfile>structManager.html</anchorfile>
      <anchor>adc5c66704fd1b0a9b9d38de8fdcb3748</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addToGroup</name>
      <anchorfile>structManager.html</anchorfile>
      <anchor>a68fd701c4f4a0c4126f30fb0eb46809d</anchor>
      <arglist>(Entity *memEntity, GroupID memGroup)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; Entity * &gt; &amp;</type>
      <name>getGroupMembers</name>
      <anchorfile>structManager.html</anchorfile>
      <anchor>a5e1017b17f0612ad6a2b5dad02efad5c</anchor>
      <arglist>(GroupID memGroup)</arglist>
    </member>
    <member kind="function">
      <type>Entity &amp;</type>
      <name>addEntity</name>
      <anchorfile>structManager.html</anchorfile>
      <anchor>a47e037085d72bac9204b47734b3aae3c</anchor>
      <arglist>(std::string id)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>destroyAll</name>
      <anchorfile>structManager.html</anchorfile>
      <anchor>aa6fcc1945934b4c4cf7c5f0e308d3709</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>MouseTracker</name>
    <filename>structMouseTracker.html</filename>
    <base>Component</base>
    <member kind="function">
      <type></type>
      <name>MouseTracker</name>
      <anchorfile>structMouseTracker.html</anchorfile>
      <anchor>a7451b6ebc2e53854bda9b1ab79531355</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~MouseTracker</name>
      <anchorfile>structMouseTracker.html</anchorfile>
      <anchor>a6de82b6a655e3a9ad247023277ddff61</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>structMouseTracker.html</anchorfile>
      <anchor>a1b92139b782973f6dbe135f9be3158a7</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structMouseTracker.html</anchorfile>
      <anchor>afd5dfe7e64afed79934b732654c5bff0</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reload</name>
      <anchorfile>structMouseTracker.html</anchorfile>
      <anchor>aa37b0f2556c8b0c64bf5197a30eafb81</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static const bool</type>
      <name>getMouseButtonPressed</name>
      <anchorfile>structMouseTracker.html</anchorfile>
      <anchor>af9a7225b5f043ca4eac2bdbee0aafcdb</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Points</name>
    <filename>structPoints.html</filename>
    <base>Text</base>
    <member kind="function">
      <type></type>
      <name>Points</name>
      <anchorfile>structPoints.html</anchorfile>
      <anchor>a9be248b584db504e01bcf09009de0956</anchor>
      <arglist>(std::string inStr)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Points</name>
      <anchorfile>structPoints.html</anchorfile>
      <anchor>a9d56d7dc8b6a6f492e07d354eb379c12</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structPoints.html</anchorfile>
      <anchor>adad983d6f230a1e9ccb71a2dd87d1516</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reload</name>
      <anchorfile>structPoints.html</anchorfile>
      <anchor>a9b6c82fcf421a12d2ca76483622fdfbb</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>structPoints.html</anchorfile>
      <anchor>af0a355f99999e8690c9d450f9464bfe3</anchor>
      <arglist>(std::string inStr, int x, int y, float scale, SDL_Color color)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>structPoints.html</anchorfile>
      <anchor>a5ecdd4b00938ce0c10f14fa52a1f8a88</anchor>
      <arglist>(std::string inStr, int x, int y, float scale)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>structPoints.html</anchorfile>
      <anchor>a3708b595d0ef813e44b22c07bed5c34a</anchor>
      <arglist>(std::string inStr, int x, int y)</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>value</name>
      <anchorfile>structPoints.html</anchorfile>
      <anchor>a15e92100b114c6783de5a570530d7fea</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Scene</name>
    <filename>structScene.html</filename>
    <member kind="function">
      <type></type>
      <name>Scene</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a56b1a969dde64f1a33b34cd136ceaa49</anchor>
      <arglist>(std::string name, int buildIndex, bool isPanel, bool isLocking, int layer)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Scene</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>aa0a5be58e2ee2d1fdafc5fb46b5e661e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>init</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a7edd8111e127173d2d06b571a177d7b1</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>update</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a7faff47f5c1b1ebc986f768c9b9732ec</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>reload</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a24ed31537c3c9c40f708e68295e2f51e</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>reloadWithState</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a94fd9954ef4f4562e3c29e69f6f27e8c</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>handleEvents</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a01a5fa609184cdc9470f8ccaf6b34dcf</anchor>
      <arglist>(SDL_Event &amp;event)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>draw</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a789c16961aa1e316b2a4a05b95187546</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addEntityToScene</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>aaa7336b94069dd6a90968bf9f513022f</anchor>
      <arglist>(Entity &amp;entity)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeEntityFromScene</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a6d94e9e8483bf03c6aa5d786fb2f948e</anchor>
      <arglist>(Entity *entity)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>existsInScene</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a83e3e3fa5c0d62e01620acf29c7db751</anchor>
      <arglist>(Entity *entity)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearScene</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a9a6078cc3fc29516f5409544ebd78c39</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>enableScene</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>aa3e52280b56676471e6fa85692ae8abe</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>disableScene</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a3f612fa63b769ff431831701f1a36eb6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const bool &amp;</type>
      <name>getIsPanel</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>afd4007289e6a1fab14313ec559cb3db8</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>const bool &amp;</type>
      <name>getIsLocking</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a6b6e6f58bf56b8a2f563687927e84ca3</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>name</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a44b2d6bffa153dda02f026f8533ceb08</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>buildIndex</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a788a34d3985920dc587460a19ccf2733</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>layer</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>ae69969ad40d0f10a8d7a7d0fc201ab9d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>mouseButtonPressed</name>
      <anchorfile>structScene.html</anchorfile>
      <anchor>a9835f4115f9424c614b2e5a4ba421713</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>SceneManager</name>
    <filename>structSceneManager.html</filename>
    <member kind="function">
      <type></type>
      <name>SceneManager</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a52085e6737c23b491c228e86781af808</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~SceneManager</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a2bb376a85d29e85f47753e26c7539229</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a8c05a859c26e5b7b26e773e0f08dc0be</anchor>
      <arglist>(std::string id)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>ac4dcda11c1bc1aec408a774a10178d45</anchor>
      <arglist>(int buildIndex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadNextScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a932ab29dbfb95b976c333cba5f2cbb3c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadPrevScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a220fb279ec5d75c5932ebb873a5c6664</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Scene *</type>
      <name>getCurrentScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>ad307aea07c7664dcdcd8a18ac41fce89</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a8b195be621119bb20fd7f39f84d182ba</anchor>
      <arglist>(Scene *scene)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeBgScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a8fba3fa586bae5b43a2e7397c7f8ec19</anchor>
      <arglist>(int layer)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>updateScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a66eb8582ca7e36bc1ad1ffe4fef7e983</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>callSceneEvents</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a665f2125a95a37a8c96af8a3ea489d15</anchor>
      <arglist>(SDL_Event &amp;event)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>drawScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>ab3b6a9d787bc950ad83ec50c0688f752</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reloadScene</name>
      <anchorfile>structSceneManager.html</anchorfile>
      <anchor>a480638fd9cd3f8b96e7ba0f5b5feefa7</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Sprites</name>
    <filename>structSprites.html</filename>
    <base>Component</base>
    <member kind="function">
      <type></type>
      <name>Sprites</name>
      <anchorfile>structSprites.html</anchorfile>
      <anchor>a90c58c4968e7c990a5accd46b58cefd7</anchor>
      <arglist>(const char *tex)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Sprites</name>
      <anchorfile>structSprites.html</anchorfile>
      <anchor>ad43a62cd40b3edd7bb1b4a4193ab1dc6</anchor>
      <arglist>(const char *tex, int nFrames, int mSpeed, bool loop)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Sprites</name>
      <anchorfile>structSprites.html</anchorfile>
      <anchor>a46633552deb102b94d645b223234de7a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>structSprites.html</anchorfile>
      <anchor>ac4bef9081db1e53ea8e764d4c21239ea</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structSprites.html</anchorfile>
      <anchor>ad357d4d5deb0293597ad6a7953afb434</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw</name>
      <anchorfile>structSprites.html</anchorfile>
      <anchor>acf0999cbe0c8a23f168b357cab07b3d4</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>recalcSpriteDimensions</name>
      <anchorfile>structSprites.html</anchorfile>
      <anchor>a9767aacb914fde74ce286c466dd0345a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="friend">
      <type>friend struct</type>
      <name>Animator</name>
      <anchorfile>structSprites.html</anchorfile>
      <anchor>a8bed86ffe9cb5dc9d845e50c5ea96129</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Text</name>
    <filename>structText.html</filename>
    <base>Component</base>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>af0a355f99999e8690c9d450f9464bfe3</anchor>
      <arglist>(std::string inStr, int x, int y, float scale, SDL_Color color)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a5ecdd4b00938ce0c10f14fa52a1f8a88</anchor>
      <arglist>(std::string inStr, int x, int y, float scale)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Text</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a3708b595d0ef813e44b22c07bed5c34a</anchor>
      <arglist>(std::string inStr, int x, int y)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Text</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a4e7641708dfbf9c6bbbd41e897e9139c</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>aec022b3d70204a615b0d107975dfb518</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a8f486a54a21fafc7a5dfb75975f1621f</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>changeText</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>ab1d94af2f78ab8ec80e50cdb88402380</anchor>
      <arglist>(std::string text)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>centreText</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>ae74b78f8759c0db114a86db64b6d8d67</anchor>
      <arglist>(SDL_Rect &amp;parentRect)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setTex</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a8791ce14f2670ec8fa98f9de34414e90</anchor>
      <arglist>(const char *text)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>std::string</type>
      <name>data</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a032059fb32d2304c4a38b89d85b168b3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>float</type>
      <name>scale</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a4792bbb71878bcb9aa41d4bb7f68e33b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>SDL_Texture *</type>
      <name>textTex</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a1be16c24549bf25debf21d52ba29faba</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>SDL_Colour</type>
      <name>textColour</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a0bbb8742e8ed2109988b868579b0923e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>SDL_Rect</type>
      <name>destRect</name>
      <anchorfile>structText.html</anchorfile>
      <anchor>a3bf3dadf3713e965b57343d1dad5c15b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>TextureManager</name>
    <filename>structTextureManager.html</filename>
    <member kind="function" static="yes">
      <type>static SDL_Point</type>
      <name>GetSizeOfSurface</name>
      <anchorfile>structTextureManager.html</anchorfile>
      <anchor>affabc7a219da0e5c10988c64f9a97466</anchor>
      <arglist>(const char *fileName)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static SDL_Texture *</type>
      <name>LoadTexture</name>
      <anchorfile>structTextureManager.html</anchorfile>
      <anchor>a8cf0937165b2ce8ce8514bcaf50c3597</anchor>
      <arglist>(const char *fileName)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static SDL_Texture *</type>
      <name>LoadTexture</name>
      <anchorfile>structTextureManager.html</anchorfile>
      <anchor>af0ef10e05ccd7d1cffd18eef53295a2d</anchor>
      <arglist>(const SDL_Colour colour, const char *text)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static SDL_Texture *</type>
      <name>LoadTexture</name>
      <anchorfile>structTextureManager.html</anchorfile>
      <anchor>ae93507f1515dbfa355cc2b6d8980ad32</anchor>
      <arglist>(SDL_Rect &amp;rect, SDL_Colour colour)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>DrawTexture</name>
      <anchorfile>structTextureManager.html</anchorfile>
      <anchor>aec4ea2167d0b919edeb74a5db3cf7ff8</anchor>
      <arglist>(SDL_Texture *tex, SDL_Rect &amp;src, SDL_Rect &amp;dest)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>DrawTexture</name>
      <anchorfile>structTextureManager.html</anchorfile>
      <anchor>a7023e6a32143039536b93f4d2f4c20a9</anchor>
      <arglist>(SDL_Texture *tex, SDL_Rect &amp;dest)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>DrawTexture</name>
      <anchorfile>structTextureManager.html</anchorfile>
      <anchor>aef20b2103e28306a714abf1161d41174</anchor>
      <arglist>(SDL_Texture *tex, SDL_Rect &amp;src, SDL_Rect &amp;dest, const double angle)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>DrawTexture</name>
      <anchorfile>structTextureManager.html</anchorfile>
      <anchor>a0a7be48af9b877305284415aea6ec09f</anchor>
      <arglist>(SDL_Texture *tex, SDL_Rect &amp;dest, const double angle)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static TTF_Font *</type>
      <name>font</name>
      <anchorfile>structTextureManager.html</anchorfile>
      <anchor>a5cb81454baf19b530a84c08ddb2e3024</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Tile</name>
    <filename>structTile.html</filename>
    <base>Component</base>
    <member kind="function">
      <type></type>
      <name>Tile</name>
      <anchorfile>structTile.html</anchorfile>
      <anchor>addab2525260d7755d1dff0b0eac9ae59</anchor>
      <arglist>(int x, int y, int w, int h, int id)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Tile</name>
      <anchorfile>structTile.html</anchorfile>
      <anchor>a98634abbd93fa13d0578d7103202d03d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>structTile.html</anchorfile>
      <anchor>a2d57b6b85f16bb978f2f4f60b265bf9e</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resizeTile</name>
      <anchorfile>structTile.html</anchorfile>
      <anchor>a2a78af6e82cf111b1d078f8c96a444ab</anchor>
      <arglist>(int w, int h, float scale=0.64f)</arglist>
    </member>
    <member kind="variable">
      <type>Transform *</type>
      <name>transform</name>
      <anchorfile>structTile.html</anchorfile>
      <anchor>a7ff6df2c4a54a1e5f6a630742f8d4014</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Sprites *</type>
      <name>sprite</name>
      <anchorfile>structTile.html</anchorfile>
      <anchor>ad17fd46301d8b9de7da563daa3fec696</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SDL_Rect</type>
      <name>tileRect</name>
      <anchorfile>structTile.html</anchorfile>
      <anchor>a5e5613c963cdbdb8822ec84ecf3a1864</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>tileID</name>
      <anchorfile>structTile.html</anchorfile>
      <anchor>af37b0873afcb54b101422972a2c17e23</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>path</name>
      <anchorfile>structTile.html</anchorfile>
      <anchor>add000516854959aea1c6554a832646c3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Transform</name>
    <filename>structTransform.html</filename>
    <base>Component</base>
    <member kind="enumeration">
      <type></type>
      <name>Rotations</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>ada80898bd2a05f81a7a1b503c82737f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NINETY</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>ada80898bd2a05f81a7a1b503c82737f6a84566d5dba51dfe1a177cd19275c8f2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ONE_EIGHTY</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>ada80898bd2a05f81a7a1b503c82737f6a3bc7ecdd728d6449e62e06bfb05740e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NINETY</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>ada80898bd2a05f81a7a1b503c82737f6a84566d5dba51dfe1a177cd19275c8f2f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ONE_EIGHTY</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>ada80898bd2a05f81a7a1b503c82737f6a3bc7ecdd728d6449e62e06bfb05740e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Transform</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>aa08ca4266efabc768973cdeea51945ab</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Transform</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a9fb589a9cfea2025a8619666cbb76019</anchor>
      <arglist>(float x, float y)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Transform</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>ac16c75e613acd88b5df26e8f8a36044c</anchor>
      <arglist>(float scale)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Transform</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>aa5680fe9234b4d5870e849b5fce8f25e</anchor>
      <arglist>(float x, float y, int w, int h, float scale)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Transform</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a68861099b410a13f71bda5db1ab9829d</anchor>
      <arglist>(Vector2D vec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>init</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a9f67e6f75148a2b7da067961e6d46902</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a95f43abca9677142b734c1536bf1b886</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reload</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a4f24046feadc161265f75f821b162a22</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>rotate</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a0067e69d59b0510d386bd6ffd5ddaeb6</anchor>
      <arglist>(Rotations rotation, bool anticlockwise)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAngle</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>af8dca674026ec3d3140314995d5b7c53</anchor>
      <arglist>(double angle)</arglist>
    </member>
    <member kind="variable">
      <type>Vector2D</type>
      <name>initPos</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a28c1e1d3ed9bf5ae2ff7877f52f2d556</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Vector2D</type>
      <name>pos</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a184506ba90094bd001616750a8efeaaa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Vector2D</type>
      <name>vel</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>adc6af70bf7caaf0ef883e196ab42fb53</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>height</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>aed2cde92529cda428813f16a7054d7a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>width</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>ac161d5afc0737803f9cd4abd16c4697a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>scale</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a631712eb230305f58d164086d492701b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>speed</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a25a3777aad28148d20cceb0f1900cec4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>angle</name>
      <anchorfile>structTransform.html</anchorfile>
      <anchor>a8fed22a9d295cf0f27facf4cbe99724b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Vector2D</name>
    <filename>structVector2D.html</filename>
    <member kind="function">
      <type></type>
      <name>Vector2D</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a98e9997ebb7a629f4db52397d4e0d653</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vector2D</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a166ca1df158a260a7cbf3b57ff147a4a</anchor>
      <arglist>(float x, float y)</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>add</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a8c9d72e0d55965b3d1a731012a74443b</anchor>
      <arglist>(const Vector2D vec)</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>subtract</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a3fbdf27adf2e0f546e2d2dde8e29fc8c</anchor>
      <arglist>(const Vector2D vec)</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>multiply</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>aebf0f2f34aa2152151276fd5ceed9c4e</anchor>
      <arglist>(const Vector2D vec)</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>divide</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>adcb60dafb901de5bd96c0e078f5adfee</anchor>
      <arglist>(const Vector2D vec)</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>operator+=</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a235f488009733ad1a38d62505c4a76a0</anchor>
      <arglist>(const Vector2D &amp;vec)</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>operator-=</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>af07ae19525e66b2e3a8e5bcd35507e24</anchor>
      <arglist>(const Vector2D &amp;vec)</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>operator*=</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>afd9ffbbcd33bec3a7df2e8ec761e6ef9</anchor>
      <arglist>(const Vector2D &amp;vec)</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>operator/=</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a3f975b1c402d06663ef5d27d9e56af4d</anchor>
      <arglist>(const Vector2D &amp;vec)</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>operator*</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a3365fdbe09c701b88caac54ef64dc7f2</anchor>
      <arglist>(const int &amp;i)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>aee0e11d38c159d70a9ec687085becb15</anchor>
      <arglist>(const Vector2D &amp;vec)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a51931a0526b17e07406227c2a908b777</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Vector2D &amp;</type>
      <name>zero</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a71c2a3a356c2c20dc2307d47d47dc349</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>x</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>aeb4253ba6555251d010ea4450619029e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>y</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a85215519d3f71d0e6be7d636346f3b7d</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend">
      <type>friend Vector2D &amp;</type>
      <name>operator+</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>ac640f3cc75789f25259df4815d74affa</anchor>
      <arglist>(Vector2D &amp;v1, const Vector2D &amp;v2)</arglist>
    </member>
    <member kind="friend">
      <type>friend Vector2D &amp;</type>
      <name>operator-</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a965d7a2a1029710ecfca725992bf4047</anchor>
      <arglist>(Vector2D &amp;v1, const Vector2D &amp;v2)</arglist>
    </member>
    <member kind="friend">
      <type>friend Vector2D &amp;</type>
      <name>operator*</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a20676d1769c063498335466d37930824</anchor>
      <arglist>(Vector2D &amp;v1, const Vector2D &amp;v2)</arglist>
    </member>
    <member kind="friend">
      <type>friend Vector2D &amp;</type>
      <name>operator/</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>a9940d5af33a1c4e29a07d2715df82358</anchor>
      <arglist>(Vector2D &amp;v1, const Vector2D &amp;v2)</arglist>
    </member>
    <member kind="friend">
      <type>friend std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>structVector2D.html</anchorfile>
      <anchor>ac84d6114898ff1593dbff7b0196be939</anchor>
      <arglist>(std::ostream &amp;stream, const Vector2D &amp;vec)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>nox-engine</title>
    <filename>index.html</filename>
    <docanchor file="index.html" title="nox-engine">md_README</docanchor>
  </compound>
</tagfile>
