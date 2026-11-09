// =============================================================
// QUIZ HISTORY ENTRY
// Purpose: Represent one finished QuizVerse session for local history.
// =============================================================

class QuizHistoryEntry {
  final String id;
  final String category;
  final DateTime startedAt;
  final DateTime finishedAt;
  final int score;
  final int questionsAnswered;
  final int correctAnswers;
  final int incorrectAnswers;
  final double accuracy;
  // Values: 'completed' or 'game_over'.
  final String status;
  // Stable category-scoped question fingerprints attempted during this session.
  final List<String> correctlyAnsweredQuestionIds;

  const QuizHistoryEntry({
    required this.id,
    required this.category,
    required this.startedAt,
    required this.finishedAt,
    required this.score,
    required this.questionsAnswered,
    required this.correctAnswers,
    required this.incorrectAnswers,
    required this.accuracy,
    required this.status,
    this.correctlyAnsweredQuestionIds = const [],
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'category': category,
    'startedAt': startedAt.toIso8601String(),
    'finishedAt': finishedAt.toIso8601String(),
    'score': score,
    'questionsAnswered': questionsAnswered,
    'correctAnswers': correctAnswers,
    'incorrectAnswers': incorrectAnswers,
    'accuracy': accuracy,
    'status': status,
    'correctlyAnsweredQuestionIds': correctlyAnsweredQuestionIds,
  };

  factory QuizHistoryEntry.fromJson(Map<String, dynamic> json) {
    return QuizHistoryEntry(
      id: json['id'] as String,
      category: json['category'] as String,
      startedAt: DateTime.parse(json['startedAt'] as String),
      finishedAt: DateTime.parse(json['finishedAt'] as String),
      score: (json['score'] as num).toInt(),
      questionsAnswered: (json['questionsAnswered'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      incorrectAnswers: (json['incorrectAnswers'] as num).toInt(),
      accuracy: (json['accuracy'] as num).toDouble(),
      status: json['status'] as String,
      correctlyAnsweredQuestionIds:
          (json['correctlyAnsweredQuestionIds'] as List<dynamic>? ?? const [])
              .map((value) => value.toString())
              .toList(),
    );
  }
}
