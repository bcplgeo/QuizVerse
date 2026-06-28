// =============================================================
// START: AUDIO MANAGER
// =============================================================
//
// Purpose:
// --------
// This class is the central controller for all QuizVerse sounds.
//
// Why do we need it?
// ------------------
// Imagine the game grows to 200 screens.
//
// Without an Audio Manager:
// - Every screen would contain its own sound code.
// - Bugs become difficult to fix.
// - Mute/Volume settings become difficult.
//
// With an Audio Manager:
// - Every screen asks THIS class to play sounds.
// - All sound logic stays in one place.
// - Future upgrades become very easy.
//
// This is a common architecture used in professional game
// development because it keeps the project clean and scalable.
//
// =============================================================

import 'package:audioplayers/audioplayers.dart';

class AudioManager {
  // -------------------------------------------------------------
  // Create one AudioPlayer for the whole application.
  //
  // static
  // ------
  // Only one shared player exists.
  //
  // final
  // -----
  // Once created, it cannot be replaced.
  //
  // _player
  // -------
  // The underscore (_) makes this variable private.
  // Only AudioManager can directly access it.
  // -------------------------------------------------------------
  static final AudioPlayer _player = AudioPlayer();

  // =============================================================
  // START: Play Correct Answer Sound
  // =============================================================
  //
  // Purpose:
  // Plays the sound effect when the player selects
  // the correct answer.
  //
  // Explanation:
  // - AssetSource tells Flutter that the sound is inside
  //   the assets folder.
  // - We only provide the path AFTER "assets/" because
  //   Flutter already knows that folder from pubspec.yaml.
  //
  // =============================================================

  static Future<void> playCorrectSound() async {
    await _player.stop(); // Stop any previous sound before playing a new one.

    // =============================================================
// START: Debug Audio Playback
//
// Purpose:
// Print a message to the console every time the correct
// answer sound is requested.
//
// This helps us determine whether the game logic is
// reaching the AudioManager.
//
// Remove this debug print after testing.
//
// =============================================================

    print("QuizVerse: Playing Correct Sound");

    await _player.play(
      AssetSource('audio/correct.mp3'),
    );

// =============================================================
// END: Debug Audio Playback
// =============================================================
  }

// =============================================================
// END: Play Correct Answer Sound
// =============================================================
}

// =============================================================
// END: AUDIO MANAGER
// =============================================================