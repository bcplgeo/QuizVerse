// =========================================
// QUESTION MODEL
// =========================================

class Question {
  // Category of question
  final String category;

  // Main question text
  final String questionText;

  // Multiple choice options
  final List<String> options;

  // Correct answer position
  final int correctAnswerIndex;

  // Explanation shown after answer
  final String explanation;

  // Real-world importance
  final String whyItMatters;

  // Difficulty level
  final String difficulty;

  Question({
    required this.category,
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.explanation,
    required this.whyItMatters,
    required this.difficulty,
  });
}

// =========================================
// END OF FILE
// =========================================