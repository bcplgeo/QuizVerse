import 'package:flutter/material.dart';

// =========================================
// ANSWER REVIEW CARD
// =========================================

class AnswerReviewCard extends StatelessWidget {

  final bool isCorrect;

  // Correct answer
  final String correctAnswer;

  // Explanation
  final String explanation;

  // Why it matters
  final String whyItMatters;

  // Difficulty
  final String difficulty;

// =============================================================
// START: Final Review Flag
//
// Purpose:
// Indicates whether this is the final review card
// before the Game Over dialog.
//
// false → Show "NEXT"
// true  → Show "FINISH"
//
// =============================================================

  final bool isFinalReview;

// =============================================================
// END: Final Review Flag
// =============================================================
  // Next question callback
  final VoidCallback onNext;

  const AnswerReviewCard({
    super.key,
    required this.isCorrect,
    required this.correctAnswer,
    required this.explanation,
    required this.whyItMatters,
    required this.difficulty,
    required this.isFinalReview,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // =========================================
              // RESULT
              // =========================================

              Text(
                isCorrect ? '✅ Correct' : '❌ Incorrect',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: isCorrect ? Colors.green : Colors.red,
                ),
              ),

              const SizedBox(height: 12),

              // =========================================
              // SCROLLABLE CONTENT
              // =========================================

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text(
                        'Correct Answer',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        correctAnswer,
                        style: const TextStyle(fontSize: 16),
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        'Explanation',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(explanation),

                      const SizedBox(height: 16),

                      const Text(
                        'Why It Matters',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(whyItMatters),

                      const SizedBox(height: 16),

                      Text(
                        'Difficulty: $difficulty',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // =========================================
              // NEXT BUTTON (ALWAYS VISIBLE)
              // =========================================

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onNext,
                  child: Text(
                    isFinalReview ? 'FINISH' : 'NEXT',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =========================================
// END OF FILE
// =========================================