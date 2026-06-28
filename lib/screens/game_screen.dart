import 'package:flutter/material.dart';

import '../models/question.dart';

import '../game/question_repository.dart';

// Import game controller
import '../game/game_controller.dart';

// Import review card
import '../widgets/answer_review_card.dart';

import 'dart:async';

import '../widgets/timer_bar.dart';

import '../widgets/hangman_widget.dart';

import 'dart:math';

import '../utils/category_theme.dart';



// =========================================
// GAME SCREEN
// =========================================

class GameScreen extends StatefulWidget {

  // =========================================
  // CATEGORY
  // =========================================

  final String category;

  // =========================================
  // SHUFFLE CONTROL
  // =========================================

  final bool shuffleQuestions;

  // =========================================
  // CONSTRUCTOR
  // =========================================

  const GameScreen({
    super.key,
    required this.category,
    this.shuffleQuestions = true,
  });

  @override
  State<GameScreen> createState() => _GameScreenState();
}

// =========================================
// DISPOSE
// =========================================



class _GameScreenState extends State<GameScreen> {

  // =========================================
// QUESTIONS FOR CURRENT GAME
// =========================================

  late List<Question> questions;

  // =========================================
  // GAME CONTROLLER
  // =========================================

  final GameController gameController = GameController();

  // =========================================
  // CURRENT QUESTION INDEX
  // =========================================

  int currentQuestionIndex = 0;

  // =========================================
  // REVIEW CARD STATE
  // =========================================

  bool showReviewCard = false;

  // =========================================
  // LAST ANSWER RESULT
  // =========================================

  bool lastAnswerCorrect = false;

  // =========================================
// INIT STATE
// =========================================

  @override
  @override
  void initState() {
    super.initState();


    // =========================================
    // LOAD QUESTIONS FOR SELECTED CATEGORY
    //
    // Questions are loaded from the central
    // QuestionRepository based on the category
    // selected on the Home Screen.
    //
    // Examples:
    // Science
    // History
    // Geography
    // Sports
    // Technology
    // Environment
    // General Knowledge
    // All
    // =========================================

    questions = List.from(
      QuestionRepository.getQuestions(widget.category),
    );

    if (widget.shuffleQuestions) {
      questions.shuffle();
    }



    // =========================================
    // SHUFFLE ONLY FOR NEW GAMES
    //
    // New Game from Home Screen:
    //   shuffleQuestions = true
    //
    // Play Again:
    //   shuffleQuestions = false
    //
    // This prevents question order from changing
    // during the same quiz session.
    // =========================================

    if (widget.shuffleQuestions) {
      questions.shuffle(Random(DateTime.now().microsecondsSinceEpoch));
    }

    startTimer();
  }

// =========================================
// DISPOSE
// =========================================

  @override
  void dispose() {
    questionTimer?.cancel();

    super.dispose();
  }


  // =========================================
// QUESTION TIMER
// =========================================

  Timer? questionTimer;

  int timeRemaining = 10;


  // =========================================
  // CURRENT QUESTION
  // =========================================

  Question get currentQuestion =>
      questions[currentQuestionIndex];

  // =========================================
// START TIMER
// =========================================

  void startTimer() {
    // Stop existing timer
    questionTimer?.cancel();

    // Reset timer value
    setState(() {
      timeRemaining = 10;
    });

    questionTimer = Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        if (!mounted) return;

        if (timeRemaining > 0) {
          setState(() {
            timeRemaining--;
          });
        } else {
          timer.cancel();
          handleTimeUp();
        }
      },
    );
  }
  // =========================================
// TIME UP
// =========================================

  void handleTimeUp() {
    gameController.loseLife();

    if (gameController.isGameOver()) {
      showGameOverDialog();
      return;
    }

    setState(() {
      lastAnswerCorrect = false;
      showReviewCard = true;
    });
  }

  // =========================================
  // CHECK ANSWER
  // =========================================

  void checkAnswer(int selectedIndex) {
    questionTimer?.cancel();
    if (selectedIndex == currentQuestion.correctAnswerIndex) {
      gameController.addScore();
      gameController.updateHighScore();
      lastAnswerCorrect = true;
    } else {
      gameController.loseLife();
      lastAnswerCorrect = false;

      if (gameController.isGameOver()) {
        showGameOverDialog();
        return;
      }
    }

    setState(() {
      showReviewCard = true;
    });
  }

  // =========================================
  // NEXT QUESTION
  // =========================================

  void moveToNextQuestion() {
    showReviewCard = false;
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        showReviewCard = false;
      });

      startTimer();
    } else {
      showQuizCompletedDialog();
    }
  }

  // =========================================
  // GAME OVER
  // =========================================

  void showGameOverDialog() {
        gameController.updateHighScore();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Game Over'),
          content: Text(
            'Final Score: ${gameController.score}',
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                setState(() {
                  questions.shuffle();
                  currentQuestionIndex = 0;
                  showReviewCard = false;

                  gameController.score = 0;
                  gameController.lives = 3;
                  timeRemaining = 10;
                });

                startTimer();
              },
              child: const Text('Play Again'),
            ),

            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
                Navigator.pop(context); // Back to Categories
              },
              child: const Text('Back to Categories'),
            ),
          ],
        );
      },
    );
  }

  // =========================================
  // QUIZ COMPLETE
  // =========================================

  void showQuizCompletedDialog() {
    gameController.updateHighScore();
        showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Quiz Complete!'),
          content: Text(
            'Final Score: ${gameController.score}',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                setState(() {
                  questions.shuffle();
                  currentQuestionIndex = 0;
                  showReviewCard = false;

                  gameController.score = 0;
                  gameController.lives = 3;
                  timeRemaining = 10; // or 7 if you changed the quiz timer to 7 seconds
                });

                startTimer();
              },
              child: const Text('Play Again'),
            ),

            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
                Navigator.pop(context); // Return to Category Screen
              },
              child: const Text('Back to Categories'),
            ),
          ],
        );
      },
    );
  }

  // =========================================
  // BUILD HEARTS
  // =========================================

  String buildLivesDisplay() {
    String hearts = '';

    for (int i = 0; i < gameController.lives; i++) {
      hearts += '❤️ ';
    }

    return hearts;
  }

  Widget _buildStatRow({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String value,
  }) {
    return Row(
      children: [

        Icon(
          icon,
          size: 18,
          color: iconColor,
        ),

        const SizedBox(width: 6),

        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),

        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  // =========================================
  // UI
  // =========================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getCategoryButtonBackground(
        questions[currentQuestionIndex].category,
      ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        iconTheme: IconThemeData(
          color: getCategoryForeground(
            questions[currentQuestionIndex].category,
          ),
        ),

        title: Row(
          children: [

            Image.asset(
              'assets/images/quizverse_logo.png',
              height: 36,
              width: 36,
            ),

            const SizedBox(width: 10),

            Text(
              'QuizVerse',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: getCategoryForeground(
                  questions[currentQuestionIndex].category,
                ),
              ),
            ),
          ],
        ),
      ),

      body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // =========================================
            // LIVES
            // =========================================

            Row(
              children: [

                Text(
                  buildLivesDisplay(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),

                const SizedBox(width: 12),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),

                  decoration: BoxDecoration(
                    color: currentQuestion.difficulty == 'Easy'
                        ? Colors.green.shade100
                        : currentQuestion.difficulty == 'Medium'
                        ? Colors.orange.shade100
                        : Colors.red.shade100,

                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: Text(
                    currentQuestion.difficulty,

                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                      color: currentQuestion.difficulty == 'Easy'
                          ? Colors.green.shade900
                          : currentQuestion.difficulty == 'Medium'
                          ? Colors.orange.shade900
                          : Colors.red.shade900,
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.amber.shade100,
                    borderRadius: BorderRadius.circular(20),

                    border: Border.all(
                      color: Colors.amber.shade700,
                    ),
                  ),

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      const Icon(
                        Icons.emoji_events,
                        color: Colors.amber,
                        size: 18,
                      ),

                      const SizedBox(width: 5),

                      Text(
                        '${gameController.highScore}',

                        style: TextStyle(
                          color: Colors.amber.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 4),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [


                TimerBar(
                  timeRemaining: timeRemaining,
                  totalTime: 10,
                  category: questions[currentQuestionIndex].category,
                ),
              ],
            ),

            const SizedBox(height: 6),

            // =========================================
            // QUESTION NUMBER
            // =========================================

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: getCategoryColor(
                        questions[currentQuestionIndex].category,
                      ),
                      width: 2,
                    ),
                  ),

                  child: Row(
                    children: [

                      Icon(
                        getCategoryIcon(
                          questions[currentQuestionIndex].category,
                        ),
                        size: 28,
                        color: getCategoryColor(
                          questions[currentQuestionIndex].category,
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: Text(
                          questions[currentQuestionIndex]
                              .category
                              .toUpperCase(),

                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: getCategoryColor(
                              questions[currentQuestionIndex].category,
                            ),
                          ),
                        ),
                      ),

                      Text(
                        "${currentQuestionIndex + 1}/${questions.length}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),



            // =========================================
            // REVIEW CARD
            // =========================================

            // =========================================
// REVIEW CARD
// =========================================

                if (showReviewCard)
          AnswerReviewCard(
          isCorrect: lastAnswerCorrect,

          correctAnswer:
          currentQuestion.options[currentQuestion.correctAnswerIndex],

          explanation: currentQuestion.explanation,

          whyItMatters: currentQuestion.whyItMatters,

          difficulty: currentQuestion.difficulty,

          onNext: moveToNextQuestion,
        )
      else ...[
                  Container(
                    padding: const EdgeInsets.all(18),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),

                      border: Border.all(
                        color: getCategoryColor(
                          questions[currentQuestionIndex].category,
                        ),
                        width: 2,
                      ),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          children: [

                            Icon(
                              Icons.help_outline,
                              color: getCategoryColor(
                                questions[currentQuestionIndex].category,
                              ),
                            ),

                            const SizedBox(width: 8),

                            Text(
                              'Question ${currentQuestionIndex + 1}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: getCategoryColor(
                                  questions[currentQuestionIndex].category,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 14),

                        Text(
                          currentQuestion.questionText,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            height: 1.35,
                          ),
                        ),
                      ],
                    ),
                  ),

    const SizedBox(height: 18),

    ...List.generate(
    currentQuestion.options.length,
    (index) {
    return Padding(
    padding: const EdgeInsets.only(
    bottom: 12,
    ),
      child: ElevatedButton(
        onPressed: () {
          checkAnswer(index);
        },

        style: ElevatedButton.styleFrom(
          backgroundColor: getCategoryButtonBackground(
            questions[currentQuestionIndex].category,
          ),

          foregroundColor: getCategoryForeground(
            questions[currentQuestionIndex].category,
          ),

          elevation: 6,

          shadowColor: getCategoryColor(
            questions[currentQuestionIndex].category,
          ),

          side: BorderSide(
            color: getCategoryColor(
              questions[currentQuestionIndex].category,
            ),
            width: 2,
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),

          padding: const EdgeInsets.symmetric(
            vertical: 18,
          ),
        ),

        child: Text(
          currentQuestion.options[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    },
    ),

                  const SizedBox(height: 8),

                  // =========================================
// HANGMAN & GAME STATS PANEL
// =========================================

                  Container(
                    width: double.infinity,

                    padding: const EdgeInsets.all(16),

                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(18),

                      border: Border.all(
                        color: getCategoryColor(
                          questions[currentQuestionIndex].category,
                        ),
                        width: 2,
                      ),

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),

                    child: Column(
                      children: [

                        // ==========================
                        // HANGMAN
                        // ==========================

                        SizedBox(
                          height: 170,

                          child: Align(
                            alignment: Alignment.centerLeft,

                            child: Padding(
                              padding: const EdgeInsets.only(left: 80),

                              child: HangmanWidget(
                                timeRemaining: timeRemaining,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 6),

                        const SizedBox(height: 8),

                        // ==========================
                        // TITLE
                        // ==========================


                      ],
                    ),
                  ),

// =========================================
// END PANEL
// =========================================
    ],
    ]
    ),
    ),
    ),
    ),

    );
  }
}

// =========================================
// END OF FILE
// =========================================