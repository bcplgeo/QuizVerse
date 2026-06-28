// =========================================
// HANGMAN HELPER
// =========================================

class HangmanHelper {
  // Convert remaining time into
  // a hangman drawing stage
  static int getStage(
      int timeRemaining,
      int totalTime,
      ) {
    final progress =
        timeRemaining / totalTime;

    if (progress > 0.85) {
      return 0;
    }

    if (progress > 0.70) {
      return 1;
    }

    if (progress > 0.55) {
      return 2;
    }

    if (progress > 0.40) {
      return 3;
    }

    if (progress > 0.25) {
      return 4;
    }

    if (progress > 0.10) {
      return 5;
    }

    return 6;
  }
}

// =========================================
// END OF FILE
// =========================================