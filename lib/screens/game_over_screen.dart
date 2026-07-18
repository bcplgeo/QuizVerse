import 'package:flutter/material.dart';
import 'dart:math';

class GameOverScreen extends StatelessWidget {
  final int score;
  final int highScore;
  final int questionsAnswered;
  final int correctAnswers;
  final double accuracy;

  final VoidCallback onPlayAgain;
  final VoidCallback onBackToCategories;

  const GameOverScreen({
    super.key,
    required this.score,
    required this.highScore,
    required this.questionsAnswered,
    required this.correctAnswers,
    required this.accuracy,
    required this.onPlayAgain,
    required this.onBackToCategories,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111827),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1B1B2F),
              Color(0xFF162447),
              Color(0xFF0F3460),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 20,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    child: Column(
                      children: [

                        const SizedBox(height: 10),

                        const CircleAvatar(
                          radius: 48,
                          backgroundColor: Color(0xFFFFEBEE),
                          child: Text(
                            "😵",
                            style: TextStyle(fontSize: 50),
                          ),
                        ),

                        const SizedBox(height: 14),

                        const Text(
                          "GAME OVER",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            color: Color(0xFFD32F2F),
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          "Better Luck Next Time",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(height: 12),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [

                              _buildStatRow(
                                icon: Icons.emoji_events,
                                iconColor: Colors.amber,
                                title: "Final Score",
                                value: score.toString(),
                              ),

                              Divider(
                                color: Colors.grey.shade300,
                                height: 22,
                              ),

                              _buildStatRow(
                                icon: Icons.star,
                                iconColor: Colors.orange,
                                title: "High Score",
                                value: highScore.toString(),
                              ),

                              Divider(
                                color: Colors.grey.shade300,
                                height: 22,
                              ),

                              _buildStatRow(
                                icon: Icons.quiz,
                                iconColor: Colors.blue,
                                title: "Questions",
                                value: questionsAnswered.toString(),
                              ),

                              Divider(
                                color: Colors.grey.shade300,
                                height: 22,
                              ),

                              _buildStatRow(
                                icon: Icons.check_circle,
                                iconColor: Colors.green,
                                title: "Correct",
                                value: correctAnswers.toString(),
                              ),

                              Divider(
                                color: Colors.grey.shade300,
                                height: 22,
                              ),

                              _buildStatRow(
                                icon: Icons.analytics,
                                iconColor: Colors.deepPurple,
                                title: "Accuracy",
                                value: "${accuracy.toStringAsFixed(1)}%",
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 12),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: _getBadgeColor(),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            _getBadgeText(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFFF8E1),
                                Color(0xFFFFECB3),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: Colors.amber,
                              width: 1.5,
                            ),
                          ),
                          child: Column(
                            children: [

                              const Icon(
                                Icons.lightbulb,
                                color: Colors.orange,
                                size: 28,
                              ),

                              const SizedBox(height: 10),

                              Text(
                                _getMotivationText(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5,
                                  color: Color(0xFF5D4037),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 14),

                        SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: ElevatedButton.icon(
                            onPressed: onPlayAgain,
                            icon: const Icon(Icons.refresh),
                            label: const Text(
                              "PLAY AGAIN",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6D28D9),
                              foregroundColor: Colors.white,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        SizedBox(
                          width: double.infinity,
                          height: 54,
                            child: ElevatedButton.icon(
                              onPressed: onBackToCategories,
                              icon: const Icon(Icons.home),
                              label: const Text(
                                "BACK TO CATEGORIES",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.8,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF374151), // Slate Gray
                                foregroundColor: Colors.white,
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
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
          color: iconColor,
          size: 24,
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF374151), // Dark slate
            ),
          ),
        ),

        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF111827), // Almost black
          ),
        ),
      ],
    );
  }

  String _getBadgeText() {
    if (accuracy >= 95) return "👑 GENIUS";
    if (accuracy >= 80) return "🥇 QUIZ MASTER";
    if (accuracy >= 60) return "🥈 LEARNER";
    return "🥉 BEGINNER";
  }

  Color _getBadgeColor() {
    if (accuracy >= 95) return Colors.deepPurple;
    if (accuracy >= 80) return Colors.green;
    if (accuracy >= 60) return Colors.orange;
    return Colors.red;
  }

  String _getMotivationText() {

    final quotes = [

      "Every expert was once a beginner.",

      "One more game could be your best game.",

      "Knowledge grows with every question.",

      "Champions never stop learning.",

      "You're getting smarter every round.",

      "Your next High Score is waiting.",

      "Failure is simply practice for success.",

      "Every mistake teaches something valuable.",

      "Curiosity always wins.",

      "Great players never quit.",

      "Learning never loses.",

      "You're closer than you think.",

      "Today's defeat builds tomorrow's victory.",

      "Challenge accepted?",

      "Small improvements become big victories.",

      "The next question could change everything.",

      "Stay curious. Stay unstoppable.",

      "Progress beats perfection.",

      "Winners keep learning.",

      "Your brain just leveled up!",
    ];

    return quotes[Random().nextInt(quotes.length)];
  }

}