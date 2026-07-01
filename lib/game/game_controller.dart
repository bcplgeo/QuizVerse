import '../utils/constants.dart';

// =========================================
// QUIZVERSE GAME CONTROLLER
// =========================================

class GameController {
  // Current player score
  int score = 0;

  // =========================================
// START: GAME STATISTICS
//
// Purpose:
// Track gameplay statistics independently
// from the score.
//
// These values will later be used to display:
//
// • Questions Answered
// • Correct Answers
// • Accuracy %
//
// This is better than calculating accuracy
// from score because score rules may change
// in future versions.
//
// =========================================

// Number of questions the player has answered.
  int questionsAnswered = 0;

// Number of correct answers.
  int correctAnswers = 0;

// =========================================
// END: GAME STATISTICS
// =========================================

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

  // =========================================
// START: ADD SCORE
//
// Purpose:
// Increase the player's score and update
// gameplay statistics.
//
// =========================================

  void addScore() {
    score += GameConstants.pointsPerCorrectAnswer;

    questionsAnswered++;
    correctAnswers++;
  }

// =========================================
// END: ADD SCORE
// =========================================

  // =========================================
  // LOSE LIFE
  // =========================================

  // =========================================
// START: LOSE LIFE
//
// Purpose:
// Reduce a life and record that the player
// answered another question.
//
// =========================================

  void loseLife() {
    lives--;

    questionsAnswered++;
  }

// =========================================
// END: LOSE LIFE
// =========================================

  // =========================================
  // GAME OVER CHECK
  // =========================================

  bool isGameOver() {
    return lives <= 0;
  }

  // =========================================
// START: ACCURACY PERCENTAGE
//
// Purpose:
// Calculate the player's accuracy.
//
// Formula:
//
// Accuracy =
// (Correct Answers ÷ Questions Answered) × 100
//
// This value is calculated whenever it is
// requested instead of being stored.
//
// =========================================

  double get accuracyPercentage {
    if (questionsAnswered == 0) {
      return 0;
    }

    return (correctAnswers / questionsAnswered) * 100;
  }

// =========================================
// END: ACCURACY PERCENTAGE
// =========================================

  // =========================================
  // UPDATE HIGH SCORE
  // =========================================

  void updateHighScore() {
    if (score > highScore) {
      highScore = score;
    }
  }
  // =========================================
// START: RESET GAME
//
// Purpose:
// Restore the GameController to a brand-new
// game state.
//
// This keeps all reset logic in one place,
// making the code easier to maintain.
//
// =========================================

  void resetGame() {
    score = 0;

    lives = GameConstants.startingLives;

    timeRemaining = GameConstants.questionTimeLimit;

    questionsAnswered = 0;

    correctAnswers = 0;

    streak = 0;
  }

// =========================================
// END: RESET GAME
// =========================================s
}

// =========================================
// END OF FILE
// =========================================