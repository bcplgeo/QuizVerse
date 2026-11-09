// =============================================================
// START: IMPORTS
// =============================================================

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/quiz_history_entry.dart';

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
  static const String quizHistoryKey = 'quiz_history_v1';

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
  // Quiz History
  // Stores finished quiz sessions locally using the existing
  // SharedPreferences dependency. No additional package required.
  // -------------------------------------------------------------
  static Future<List<QuizHistoryEntry>> loadQuizHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final rawHistory = prefs.getString(quizHistoryKey);
    if (rawHistory == null || rawHistory.isEmpty) return [];

    try {
      final decoded = jsonDecode(rawHistory) as List<dynamic>;
      return decoded
          .map(
            (item) => QuizHistoryEntry.fromJson(
              Map<String, dynamic>.from(item as Map),
            ),
          )
          .toList();
    } catch (_) {
      // Keep the app usable if a stored history payload is malformed.
      return [];
    }
  }

  static Future<void> saveQuizHistoryEntry(QuizHistoryEntry entry) async {
    final prefs = await SharedPreferences.getInstance();
    final history = await loadQuizHistory();
    history.insert(0, entry);
    await prefs.setString(
      quizHistoryKey,
      jsonEncode(history.map((item) => item.toJson()).toList()),
    );
  }

  static Future<Map<String, dynamic>> loadCategoryStats(String category) async {
    final history = await loadQuizHistory();
    final sessions = category == 'All'
        ? history
        : history.where((entry) => entry.category == category).toList();
    final completed = sessions
        .where((entry) => entry.status == 'completed')
        .toList();

    final bestScore = sessions.isEmpty
        ? 0
        : sessions.map((entry) => entry.score).reduce((a, b) => a > b ? a : b);
    final latestScore = sessions.isEmpty ? null : sessions.first.score;
    final bestAccuracy = completed.isEmpty
        ? 0.0
        : completed
              .map((entry) => entry.accuracy)
              .reduce((a, b) => a > b ? a : b);
    final uniqueQuestionIds = <String>{
      for (final entry in sessions) ...entry.correctlyAnsweredQuestionIds,
    };

    return {
      'completedCount': completed.length,
      'bestScore': bestScore,
      'latestScore': latestScore,
      'bestAccuracy': bestAccuracy,
      'uniqueQuestionsAnswered': uniqueQuestionIds.length,
    };
  }

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
