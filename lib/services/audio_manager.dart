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
// START: Sound Enabled Flag
//
// Purpose:
// Controls whether sounds are allowed to play.
//
// Updated from the Settings screen.
//
// =============================================================

  static bool soundEnabled = true;

// =============================================================
// END: Sound Enabled Flag
// =============================================================

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
    if (!soundEnabled) return;
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

// =============================================================
// START: Play Wrong Answer Sound
//
// Purpose:
// Plays a short sound effect whenever the player
// selects the wrong answer.
//
// Why do we keep this as a separate method?
// -----------------------------------------
// Each sound has its own responsibility.
// This makes the code easier to read and maintain.
//
// =============================================================

  static Future<void> playWrongSound() async {
    if (!soundEnabled) return;
    // Stop any sound currently playing.
    await _player.stop();

    // Play the wrong answer sound.
    await _player.play(
      AssetSource('audio/wrong.mp3'),
    );
  }

// =============================================================
// END: Play Wrong Answer Sound
// =============================================================

// =============================================================
// START: Play Timer Warning Sound
//
// Purpose:
// Plays a short warning sound when only a few
// seconds remain for the current question.
//
// =============================================================

  static Future<void> playTimerWarningSound() async {
    if (!soundEnabled) return;

    await _player.stop();

    await _player.play(
      AssetSource('audio/timer_warning.mp3'),
    );
  }


// =============================================================
// END: Play Timer Warning Sound
// =============================================================

// =============================================================
// START: Play Victory Sound
//
// Purpose:
// Plays a short victory sound when the player
// successfully completes the quiz.
//
// =============================================================

  static Future<void> playVictorySound() async {
    if (!soundEnabled) return;

    await _player.stop();

    await _player.play(
      AssetSource('audio/victory.mp3'),
    );
  }

// =============================================================
// END: Play Victory Sound
// =============================================================

// =============================================================
// START: Play Game Over Sound
//
// Purpose:
// Plays a short failure sound when the player
// loses all lives.
//
// =============================================================

  static Future<void> playGameOverSound() async {
    if (!soundEnabled) return;

    await _player.stop();

    await _player.play(
      AssetSource('audio/game_over.mp3'),
    );
  }

// =============================================================
// END: Play Game Over Sound
// =============================================================

// =============================================================
// START: INTRO MUSIC
// =============================================================
//
// Purpose:
// --------
// Plays the QuizVerse intro theme once when the Home Screen opens.
//
// Notes:
// ------
// - Respects the global sound setting.
// - Plays only once.
// - Does NOT loop.
// =============================================================
  // NOTE:
// This music plays only once when the Home Screen is first created.
// It respects the user's Sound ON/OFF preference.

  static Future<void> playIntroMusic() async {
    if (!soundEnabled) return;

    await _player.stop();

    await _player.play(
        AssetSource('audio/intro.mp3')
    );
  }

// =============================================================
// END: INTRO MUSIC
// =============================================================

}

// =============================================================
// END: AUDIO MANAGER
// =============================================================