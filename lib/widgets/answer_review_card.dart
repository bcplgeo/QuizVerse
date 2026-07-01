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
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // =========================================
            // RESULT
            // =========================================

            Text(
              isCorrect
                  ? '✅ Correct'
                  : '❌ Incorrect',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color:
                isCorrect ? Colors.green : Colors.red,
              ),
            ),

            const SizedBox(height: 20),

            // =========================================
            // CORRECT ANSWER
            // =========================================

            const Text(
              'Correct Answer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              correctAnswer,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

            // =========================================
            // EXPLANATION
            // =========================================

            const Text(
              'Explanation',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(explanation),

            const SizedBox(height: 20),

            // =========================================
            // WHY IT MATTERS
            // =========================================

            const Text(
              'Why It Matters',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(whyItMatters),

            const SizedBox(height: 20),

            // =========================================
            // DIFFICULTY
            // =========================================

            Text(
              'Difficulty: $difficulty',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // =========================================
            // NEXT BUTTON
            // =========================================

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onNext,
                // =============================================================
// START: Dynamic Button Text
//
// Purpose:
// Display the appropriate button text.
//
// Normal Review:
//      NEXT
//
// Final Review:
//      FINISH
//
// This gives the player a clear indication that
// the quiz is about to end.
//
// =============================================================

                child: Text(
                  isFinalReview ? 'FINISH' : 'NEXT',
                ),

// =============================================================
// END: Dynamic Button Text
// =============================================================
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =========================================
// END OF FILE
// =========================================