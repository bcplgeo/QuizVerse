import '../utils/constants.dart';

// =========================================
// QUIZVERSE GAME CONTROLLER
// =========================================

class GameController {
  // Current player score
  int score = 0;

  // Highest score achieved
  int highScore = 0;

  // Current streak count
  int streak = 0;

  // Remaining lives
  int lives = GameConstants.startingLives;

  // Current timer value
  int timeRemaining = GameConstants.questionTimeLimit;

  // =========================================
  // ADD SCORE
  // =========================================

  void addScore() {
    score += GameConstants.pointsPerCorrectAnswer;
  }

  // =========================================
  // LOSE LIFE
  // =========================================

  void loseLife() {
    lives--;
  }

  // =========================================
  // GAME OVER CHECK
  // =========================================

  bool isGameOver() {
    return lives <= 0;
  }

  // =========================================
  // UPDATE HIGH SCORE
  // =========================================

  void updateHighScore() {
    if (score > highScore) {
      highScore = score;
    }
  }
}

// =========================================
// END OF FILE
// =========================================