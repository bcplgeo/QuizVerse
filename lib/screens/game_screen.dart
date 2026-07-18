// =============================================================
// START: Audio Manager Import
//
// Purpose:
// Gives this screen access to QuizVerse's centralized
// Audio Manager.
//
// =============================================================

import '../services/audio_manager.dart';

// =============================================================
// END: Audio Manager Import
// =============================================================

// =============================================================
// START: Storage Service Import
//
// Purpose:
// Load and save persistent data such as
// High Score and future app settings.
//
// =============================================================

import '../services/storage_service.dart';

// =============================================================
// END: Storage Service Import
// =============================================================

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

import '../services/vibration_manager.dart';
import 'package:quizverse/managers/ad_manager.dart';

import 'game_over_screen.dart';

import 'quiz_completed_screen.dart';



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

// =============================================================
// START: QUESTION OPTION SHUFFLER
// =============================================================
//
// Purpose:
// --------
// Randomly shuffle the answer options while keeping track
// of the correct answer.
//
// Why?
// ----
// Our question database stores the correct answer at
// index 0 for most questions.
//
// Without shuffling:
//
//   A ✅
//   B
//   C
//   D
//
// Players quickly discover the pattern.
//
// This function randomizes the options and automatically
// updates the correctAnswerIndex.
//
// =============================================================

Question shuffleQuestionOptions(Question question) {

  // =============================================================
// START: Debug Question Shuffle
//
// Purpose:
// Verify that every question passes through the
// answer randomization function.
//
// Remove after testing.
//
// =============================================================


// =============================================================
// END: Debug Question Shuffle
// =============================================================

  // Create a copy of the options.
  final shuffledOptions = List<String>.from(question.options);

  // Store the correct answer BEFORE shuffling.
  final correctAnswer =
  question.options[question.correctAnswerIndex];

  // Randomly shuffle the copied list.
  shuffledOptions.shuffle(
    Random(DateTime.now().microsecondsSinceEpoch),
  );

  // Find the new location of the correct answer.
  final newCorrectIndex =
  shuffledOptions.indexOf(correctAnswer);

  // Return a brand-new Question object.
  return Question(
    category: question.category,
    questionText: question.questionText,
    options: shuffledOptions,
    correctAnswerIndex: newCorrectIndex,
    explanation: question.explanation,
    whyItMatters: question.whyItMatters,
    difficulty: question.difficulty,
  );
}

// =============================================================
// END: QUESTION OPTION SHUFFLER
// =============================================================

// =========================================
// DISPOSE
// =========================================



class _GameScreenState extends State<GameScreen> {


  // =============================================================
// START: GameScreen Context
//
// Purpose:
// Stores the GameScreen's own BuildContext so it can be
// used later after asynchronous operations like ads.
//
// =============================================================

  late BuildContext gameScreenContext;

// =============================================================
// END: GameScreen Context
// =============================================================


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

bool showReviewCard = false;

  // =========================================
  // LAST ANSWER RESULT
  // =========================================

  bool lastAnswerCorrect = false;

  // =========================================
// INIT STATE
// =========================================

  // =============================================================
// START: Load Saved High Score
//
// Purpose:
// Load the saved High Score from device storage
// when the Game Screen is created.
//
// =============================================================

  Future<void> loadHighScore() async {
    final savedHighScore = await StorageService.loadHighScore();

    if (!mounted) return;

    setState(() {
      gameController.highScore = savedHighScore;
    });
  }

// =============================================================
// END: Load Saved High Score
// =============================================================

  @override
  void initState() {
    super.initState();
    // Load saved High Score
    loadHighScore();


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

    // =============================================================
// START: LOAD QUESTIONS WITH SHUFFLED OPTIONS
//
// Purpose:
// Load all questions and randomize the answer options
// for every question before the game begins.
//
// =============================================================

    questions = QuestionRepository
        .getQuestions(widget.category)
        .map(shuffleQuestionOptions)
        .toList();

// =============================================================
// END: LOAD QUESTIONS WITH SHUFFLED OPTIONS
// =============================================================

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

// =============================================================
// START: Timer Pause Flag
//
// Purpose:
// Temporarily freezes the quiz timer while an
// interstitial advertisement is being shown.
//
// false = Timer runs normally
// true  = Timer is paused
//
// =============================================================

  bool isTimerPaused = false;

// =============================================================
// END: Timer Pause Flag
// =============================================================

  int timeRemaining = 10;

  // =============================================================
// START: Timer Warning Flag
//
// Purpose:
// Ensures the timer warning sound is played
// only once for each question.
//
// =============================================================

  bool timerWarningPlayed = false;

// =============================================================
// END: Timer Warning Flag
// =============================================================

  // =============================================================
// START: Pending Game Over Flag
//
// Purpose:
// Delays the Game Over dialog until the player has
// finished reading the Review Card.
//
// false = Continue game normally
// true  = Show Game Over after Next is pressed
//
// =============================================================

  bool pendingGameOver = false;

// =============================================================
// END: Pending Game Over Flag
// =============================================================


  // =========================================
  // CURRENT QUESTION
  // =========================================

  // =============================================================
// START: Current Question Debug
//
// Purpose:
// Display the current correct answer index in the app.
// This helps us verify whether answer options are being
// randomized.
//
// IMPORTANT:
// Remove this after debugging.
//
// =============================================================

  Question get currentQuestion {
        return questions[currentQuestionIndex];
  }

// =============================================================
// END: Current Question Debug
// =============================================================


  // =========================================
// START TIMER
// =========================================

  void startTimer() {
    // Stop existing timer
    questionTimer?.cancel();

    // Reset timer state for the new question.
    setState(() {
      timeRemaining = 10;

      // Allow the warning sound to play again
      // for this question.
      timerWarningPlayed = false;
    });

    questionTimer = Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        if (!mounted) return;
        // Pause countdown while an interstitial ad is visible.
        if (isTimerPaused) {
          return;
        }

        if (timeRemaining > 0) {
          setState(() {
            timeRemaining--;
          });

          // =============================================================
          // START: Timer Warning Sound
          //
          // Purpose:
          // Play a warning sound once when only
          // 3 seconds remain.
          //
          // =============================================================

          if (timeRemaining == 3 && !timerWarningPlayed) {
            timerWarningPlayed = true;



            AudioManager.playTimerWarningSound();
          }

          // =============================================================
          // END: Timer Warning Sound
          // =============================================================
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

    // =============================================================
// START: Delay Game Over Until Review Card
//
// Purpose:
// If the player has lost the last life,
// do NOT show the Game Over dialog immediately.
//
// Instead, remember that a Game Over is pending.
// The dialog will appear after the player presses
// the Next button on the Review Card.
//
// =============================================================

    if (gameController.isGameOver()) {
      pendingGameOver = true;
    }

// =============================================================
// END: Delay Game Over Until Review Card
// =============================================================

    lastAnswerCorrect = false;
    showReviewDialog();
  }

  // =========================================
  // CHECK ANSWER
  // =========================================

  Future<void> checkAnswer(int selectedIndex) async {
    questionTimer?.cancel();
    if (selectedIndex == currentQuestion.correctAnswerIndex) {
      // =============================================================
// START: Correct Answer Sound
//
// Purpose:
// Play a positive sound whenever the player answers correctly.
//
// =============================================================

      AudioManager.playCorrectSound();

// =============================================================
// END: Correct Answer Sound
// =============================================================
      // =============================================================
// START: Update & Save High Score
//
// Purpose:
// After a correct answer, update the High Score.
// If a new record is achieved, immediately save it
// to permanent storage.
//
// This protects the score even if the app closes
// unexpectedly.
//
// =============================================================

      gameController.addScore();

      final previousHighScore = gameController.highScore;

      gameController.updateHighScore();

      if (gameController.highScore > previousHighScore) {
        StorageService.saveHighScore(gameController.highScore);
      }

      lastAnswerCorrect = true;

// =============================================================
// END: Update & Save High Score
// =============================================================
    } else {

      // =============================================================
      // START: Wrong Answer Sound
      //
      // Purpose:
      // Play a short sound whenever the player
      // selects an incorrect answer.
      //
      // This sound is played immediately so the
      // player receives instant feedback.
      // =============================================================

      AudioManager.playWrongSound();
      await VibrationManager.vibrateShort();

      // =============================================================
      // END: Wrong Answer Sound
      // =============================================================

      gameController.loseLife();
      lastAnswerCorrect = false;

      // =============================================================
// START: Delay Game Over Until Review Card
//
// Purpose:
// Remember that the game is over, but allow the
// Review Card to appear first.
//
// =============================================================

      if (gameController.isGameOver()) {
        pendingGameOver = true;
      }

// =============================================================
// END: Delay Game Over Until Review Card
// =============================================================
    }

    showReviewDialog();
  }

  void showReviewDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return Dialog(
          insetPadding: const EdgeInsets.all(16),
          child: AnswerReviewCard(
            isCorrect: lastAnswerCorrect,
            correctAnswer:
            currentQuestion.options[currentQuestion.correctAnswerIndex],
            explanation: currentQuestion.explanation,
            whyItMatters: currentQuestion.whyItMatters,
            difficulty: currentQuestion.difficulty,
            isFinalReview: pendingGameOver,
            onNext: () {
              Navigator.pop(context);

              Future.delayed(
                const Duration(milliseconds: 150),
                    () {
                  if (mounted) {
                    moveToNextQuestion();
                  }
                },
              );
            },
          ),
        );
      },
    );
  }

  // =========================================
  // NEXT QUESTION
  // =========================================

  void moveToNextQuestion() {

    // =============================================================
// START: Pending Game Over Check
//
// Purpose:
// If the player has already lost all lives,
// show the Game Over dialog instead of moving
// to another question.
//
// =============================================================

    if (pendingGameOver) {
      pendingGameOver = false;

      gameController.updateHighScore();

      AudioManager.playGameOverSound();

      Navigator.push(

        context,
        MaterialPageRoute(
          builder: (_) => GameOverScreen(
            score: gameController.score,
            highScore: gameController.highScore,
            questionsAnswered: gameController.questionsAnswered,
            correctAnswers: gameController.correctAnswers,
            accuracy: gameController.accuracyPercentage,

            onPlayAgain: () {
              Navigator.pop(context);

              isTimerPaused = true;

              AdManager.showInterstitialAd(
                onAdClosed: () {
                  if (!mounted) return;

                  isTimerPaused = false;
                },
              );

              setState(() {
                questions.shuffle();
                currentQuestionIndex = 0;

                gameController.resetGame();

                timeRemaining = 10;
                pendingGameOver = false;
              });

              startTimer();
            },

            onBackToCategories: () {
              Navigator.pop(context); // Close GameOverScreen
              Navigator.pop(context); // Return HomeScreen
              AdManager.showInterstitialAd();
            },
          ),
        ),
      );

      return;
    }

// =============================================================
// END: Pending Game Over Check
// =============================================================
    showReviewCard = false;
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        showReviewCard = false;
      });

      startTimer();
    } else {

      gameController.updateHighScore();

      AudioManager.playVictorySound();

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => QuizCompletedScreen(
            score: gameController.score,
            highScore: gameController.highScore,
            questionsAnswered: gameController.questionsAnswered,
            correctAnswers: gameController.correctAnswers,
            accuracy: gameController.accuracyPercentage,

            onPlayAgain: () {
              Navigator.pop(context);

              isTimerPaused = true;

              AdManager.showInterstitialAd(
                onAdClosed: () {
                  if (!mounted) return;

                  isTimerPaused = false;

                  setState(() {
                    questions.shuffle();
                    currentQuestionIndex = 0;

                    gameController.resetGame();

                    timeRemaining = 10;
                  });

                  startTimer();
                },
              );
            },

            onBackToCategories: () {
              Navigator.pop(context); // Close QuizCompletedScreen
              Navigator.pop(context); // Return HomeScreen
              AdManager.showInterstitialAd();
            },
          ),
        ),
      );
    }
  }

  // =========================================
  // GAME OVER
  // =========================================


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
  @override
  Widget build(BuildContext context) {

    gameScreenContext = context;

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
                padding: const EdgeInsets.all(10),
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
                    height: MediaQuery.of(context).size.height * 0.15,

                    child: Align(
                      alignment: Alignment.centerLeft,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 45),

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
            // =============================================================
// START: Final Review Status
//
// Purpose:
// Tell the Review Card whether this is the last
// review before the Game Over dialog.
//
// =============================================================

            isFinalReview: pendingGameOver,

// =============================================================
// END: Final Review Status
// =============================================================

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
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            height: 1.35,
                          ),
                        ),
                      ],
                    ),
                  ),

    const SizedBox(height: 10),

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
            vertical: 14,
          ),
        ),

        child: Text(
          currentQuestion.options[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    },
    ),

                  const SizedBox(height: 4),

                  // =========================================
// HANGMAN & GAME STATS PANEL
// =========================================


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