// =============================================================
// START: IMPORTS
// =============================================================

import 'package:shared_preferences/shared_preferences.dart';

// =============================================================
// END: IMPORTS
// =============================================================

// =============================================================
// START: STORAGE SERVICE
//
// Purpose:
// Provides a single place to read and write
// permanent settings for QuizVerse.
//
// Current:
// • High Score
//
// Future:
// • Sound
// • Vibration
// • Theme
// • Total Games Played
//
// =============================================================

class StorageService {
  static const String highScoreKey = 'high_score';

  // =============================================================
// START: Settings Keys
//
// Purpose:
// Keys used to store user preferences.
//
// =============================================================

  static const String soundEnabledKey = 'sound_enabled';

// =============================================================
// END: Settings Keys
// =============================================================

  // -------------------------------------------------------------
  // Save High Score
  // -------------------------------------------------------------
  static Future<void> saveHighScore(int score) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(highScoreKey, score);
  }

  // -------------------------------------------------------------
  // Load High Score
  // -------------------------------------------------------------
  static Future<int> loadHighScore() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(highScoreKey) ?? 0;
  }

  // =============================================================
// START: Sound Preference
//
// Purpose:
// Save and load whether sound effects are enabled.
//
// =============================================================

  static Future<void> saveSoundEnabled(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(soundEnabledKey, enabled);
  }

  static Future<bool> loadSoundEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(soundEnabledKey) ?? true;
  }

  static const String vibrationEnabledKey = 'vibration_enabled';



// =============================================================
// END: Sound Preference
// =============================================================
// =============================================================
// START: Vibration Preference
//
// Purpose:
// Save and load whether vibration feedback is enabled.
//
// =============================================================

  static Future<void> saveVibrationEnabled(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(vibrationEnabledKey, enabled);
  }

  static Future<bool> loadVibrationEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(vibrationEnabledKey) ?? true;
  }

// =============================================================
// END: Vibration Preference
// =============================================================

}



// =============================================================
// END: STORAGE SERVICE
// =============================================================