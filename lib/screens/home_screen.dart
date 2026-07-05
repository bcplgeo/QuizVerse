import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import '../utils/category_theme.dart';
import 'settings_screen.dart';

// Import Game Screen
import 'game_screen.dart';

import '../utils/categories.dart';

import 'package:quizverse/services/audio_manager.dart';

// =========================================
// HOME SCREEN
// =========================================

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // =========================================
  // SELECTED CATEGORY
  // =========================================



  String selectedCategory = QuizCategory.science;

  // =============================================================
// START: HOME SCREEN INITIALIZATION
// =============================================================
//
// Purpose:
// --------
// Runs once when the Home Screen is created.
//
// =============================================================

  @override
  void initState() {
    super.initState();
    print("HomeScreen initState");
    AudioManager.playIntroMusic();
  }

// =============================================================
// END: HOME SCREEN INITIALIZATION
// =============================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizVerse'),

        // =============================================================
// START: Overflow Menu
//
// Purpose:
// Provides access to secondary actions such as
// Settings and Exit.
//
// =============================================================

        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'settings':
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SettingsScreen(),
                    ),
                  );
                  break;

                case 'exit':
                  SystemNavigator.pop();
                  break;
              }
            },

            itemBuilder: (context) => const [

              PopupMenuItem(
                value: 'settings',
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(width: 10),
                    Text('Settings'),
                  ],
                ),
              ),

              PopupMenuItem(
                value: 'exit',
                child: Row(
                  children: [
                    Icon(Icons.close),
                    SizedBox(width: 10),
                    Text('Exit'),
                  ],
                ),
              ),
            ],
          ),
        ],

// =============================================================
// END: Overflow Menu
// =============================================================
      ),

        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 500,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        // =========================================
                        // APP LOGO
                        // =========================================

                        Image.asset(
                          'assets/images/quizverse_logo.png',
                          height: MediaQuery.of(context).size.height * 0.18,
                        ),

                        const SizedBox(height: 12),

                        const Text(
                          'Challenge Your Mind.\nExpand Your Knowledge.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),

                        const SizedBox(height: 24),

                        // =========================================
                        // CATEGORY TITLE
                        // =========================================

                        const Text(
                          'Choose Category',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 12),

                        // =========================================
                        // CATEGORY CHIPS
                        // =========================================

                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          alignment: WrapAlignment.center,
                          children: [
                            QuizCategory.science,
                            QuizCategory.history,
                            QuizCategory.geography,
                            QuizCategory.sports,
                            QuizCategory.technology,
                            QuizCategory.generalKnowledge,
                            QuizCategory.environment,
                            QuizCategory.all,
                          ].map((category) {
                            return ChoiceChip(
                              avatar: Icon(
                                getCategoryIcon(category),
                                size: 18,
                                color: selectedCategory == category
                                    ? Colors.white
                                    : getCategoryColor(category),
                              ),
                              label: Text(
                                category,
                                style: TextStyle(
                                  color: selectedCategory == category
                                      ? Colors.white
                                      : getCategoryColor(category),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              backgroundColor:
                              getCategoryButtonBackground(category),
                              selectedColor: getCategoryColor(category),
                              selected: selectedCategory == category,
                              onSelected: (_) {
                                setState(() {
                                  selectedCategory = category;
                                });
                              },
                            );
                          }).toList(),
                        ),

                        const SizedBox(height: 24),

                        // =========================================
                        // START GAME
                        // =========================================

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GameScreen(
                                  category: selectedCategory,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 18,
                            ),
                          ),
                          child: const Text(
                            'START GAME',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                        ),
                      ),
                    ),
                ),
                );
              },
          ),
        ),
    );
  }
}

// =========================================
// END OF FILE
// =========================================