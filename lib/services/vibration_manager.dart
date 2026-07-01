// =============================================================
// START: VIBRATION MANAGER
// =============================================================
//
// Purpose:
// --------
// Central controller for all QuizVerse vibration feedback.
//
// Why do we need it?
// ------------------
// Instead of every screen directly calling vibration APIs,
// all vibration logic is centralized here.
//
// Benefits:
// - Easy to enable/disable vibration.
// - Consistent vibration patterns.
// - Easy future expansion (success, warning, game over, etc.).
//
// =============================================================

import 'package:vibration/vibration.dart';

class VibrationManager {
  // =============================================================
  // START: Vibration Enabled Flag
  //
  // Purpose:
  // Controls whether vibration feedback is allowed.
  //
  // Loaded during app startup from StorageService.
  //
  // =============================================================

  static bool vibrationEnabled = true;

  // =============================================================
  // END: Vibration Enabled Flag
  // =============================================================

  // =============================================================
  // START: Short Vibration
  //
  // Purpose:
  // Plays a short vibration for events such as
  // wrong answers.
  //
  // =============================================================

  static Future<void> vibrateShort() async {
    if (!vibrationEnabled) return;

    if (await Vibration.hasVibrator() ?? false) {
      await Vibration.vibrate(duration: 100);
    }
  }

// =============================================================
// END: Short Vibration
// =============================================================
}

// =============================================================
// END: VIBRATION MANAGER
// =============================================================