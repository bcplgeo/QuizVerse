import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/category_theme.dart';
import '../utils/categories.dart';
import 'settings_screen.dart';
import 'game_screen.dart';
import 'package:quizverse/services/audio_manager.dart';

// =========================================
// HOME SCREEN — QUIZVERSE V4 CATEGORY UI
// =========================================
// Preserves the existing navigation, category identifiers,
// audio initialization, settings access and game launch flow.
// =========================================

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = QuizCategory.science;

  // Question totals reflect the current V3 question-bank inventory.
  // Original seven banks contain 125 questions each; the twelve
  // additional banks contain 100 questions each.
  static const Map<String, int> _questionCounts = {
    QuizCategory.science: 125,
    QuizCategory.indianHistory: 125,
    QuizCategory.geography: 125,
    QuizCategory.sports: 125,
    QuizCategory.technology: 125,
    QuizCategory.generalKnowledge: 125,
    QuizCategory.environment: 125,
    QuizCategory.animalsWildlife: 100,
    QuizCategory.artsLiteratureMusic: 100,
    QuizCategory.businessEconomics: 100,
    QuizCategory.culturesTraditions: 100,
    QuizCategory.foodBeverage: 100,
    QuizCategory.humanBodyHealth: 100,
    QuizCategory.languagesLinguistics: 100,
    QuizCategory.mythologyFolklore: 100,
    QuizCategory.psychologyHumanBehaviour: 100,
    QuizCategory.spaceAstronomy: 100,
    QuizCategory.travelTourism: 100,
    QuizCategory.worldHistory: 100,
    QuizCategory.all: 2075,
  };

  static const List<String> _categories = [
    QuizCategory.science,
    QuizCategory.indianHistory,
    QuizCategory.geography,
    QuizCategory.sports,
    QuizCategory.technology,
    QuizCategory.generalKnowledge,
    QuizCategory.environment,
    QuizCategory.animalsWildlife,
    QuizCategory.artsLiteratureMusic,
    QuizCategory.businessEconomics,
    QuizCategory.culturesTraditions,
    QuizCategory.foodBeverage,
    QuizCategory.humanBodyHealth,
    QuizCategory.languagesLinguistics,
    QuizCategory.mythologyFolklore,
    QuizCategory.psychologyHumanBehaviour,
    QuizCategory.spaceAstronomy,
    QuizCategory.travelTourism,
    QuizCategory.worldHistory,
    QuizCategory.all,
  ];

  static const Color _pageBackground = Color(0xFF0B1020);
  static const Color _surface = Color(0xFF151D32);
  static const Color _mutedText = Color(0xFF9BA7BD);
  static const Color _accent = Color(0xFFB69CFF);

  @override
  void initState() {
    super.initState();
    AudioManager.playIntroMusic();
  }

  void _startGame() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GameScreen(category: selectedCategory),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedCount = _questionCounts[selectedCategory] ?? 0;

    return Scaffold(
      backgroundColor: _pageBackground,
      appBar: AppBar(
        backgroundColor: _pageBackground,
        elevation: 0,
        titleSpacing: 20,
        title: const Text(
          'QuizVerse',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.3,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white70),
            color: _surface,
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
                    Icon(Icons.settings_outlined, color: Colors.white70),
                    SizedBox(width: 10),
                    Text('Settings', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'exit',
                child: Row(
                  children: [
                    Icon(Icons.close, color: Colors.white70),
                    SizedBox(width: 10),
                    Text('Exit', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final horizontalPadding = constraints.maxWidth < 360 ? 16.0 : 20.0;
            final crossAxisCount = constraints.maxWidth >= 650 ? 3 : 2;

            return SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                8,
                horizontalPadding,
                28,
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 760),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildHero(),
                      const SizedBox(height: 28),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Explore categories',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Choose a topic and test your knowledge',
                                  style: TextStyle(
                                    color: _mutedText,
                                    fontSize: 12.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '${_categories.length} topics',
                            style: const TextStyle(
                              color: _accent,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _categories.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          mainAxisExtent: 146,
                        ),
                        itemBuilder: (context, index) {
                          final category = _categories[index];
                          final isSelected = selectedCategory == category;

                          return _CategoryCard(
                            category: category,
                            questionCount: _questionCounts[category] ?? 0,
                            selected: isSelected,
                            onTap: () {
                              setState(() {
                                selectedCategory = category;
                              });
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 18),
                      _buildSelectedSummary(selectedCount),
                      const SizedBox(height: 14),
                      SizedBox(
                        height: 58,
                        child: ElevatedButton(
                          onPressed: _startGame,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF8064D8),
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.play_arrow_rounded, size: 25),
                              SizedBox(width: 8),
                              Text(
                                'START GAME',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      const Center(
                        child: Text(
                          'CHALLENGE YOUR MIND  •  EXPAND YOUR KNOWLEDGE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF68758D),
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.05,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHero() {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF252344), Color(0xFF171D34), Color(0xFF141B2E)],
        ),
        border: Border.all(color: Colors.white.withOpacity(0.07)),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/quizverse_logo.png',
            height: 104,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 12),
          const Text(
            'Your next challenge starts here.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 7),
          const Text(
            'Explore 19 categories and put your knowledge to the test.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _mutedText,
              fontSize: 12.5,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.06),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white.withOpacity(0.07)),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.auto_awesome, color: _accent, size: 15),
                SizedBox(width: 7),
                Text(
                  '2,075 QUESTIONS AVAILABLE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.9,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectedSummary(int selectedCount) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      decoration: BoxDecoration(
        color: _surface,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withOpacity(0.06)),
      ),
      child: Row(
        children: [
          Icon(
            getCategoryIcon(selectedCategory),
            color: _accent,
            size: 20,
          ),
          const SizedBox(width: 11),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'SELECTED CATEGORY',
                  style: TextStyle(
                    color: _mutedText,
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  selectedCategory,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '$selectedCount questions',
            style: const TextStyle(
              color: _accent,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

// =========================================
// CATEGORY CARD
// =========================================

class _CategoryCard extends StatelessWidget {
  final String category;
  final int questionCount;
  final bool selected;
  final VoidCallback onTap;

  const _CategoryCard({
    required this.category,
    required this.questionCount,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final accent = getCategoryColor(category);
    final isSelected = selected;

    return AnimatedScale(
      scale: isSelected ? 1.025 : 1.0,
      duration: const Duration(milliseconds: 210),
      curve: Curves.easeOutBack,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 260),
        curve: Curves.easeOutCubic,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.lerp(
                const Color(0xFF202A40),
                accent,
                isSelected ? 0.19 : 0.085,
              )!,
              Color.lerp(
                const Color(0xFF11192B),
                accent,
                isSelected ? 0.12 : 0.045,
              )!,
            ],
          ),
          border: Border.all(
            color: accent.withOpacity(isSelected ? 0.95 : 0.30),
            width: isSelected ? 1.7 : 1.1,
          ),
          boxShadow: [
            BoxShadow(
              color: accent.withOpacity(isSelected ? 0.22 : 0.055),
              blurRadius: isSelected ? 20 : 10,
              offset: const Offset(0, 6),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.20),
              blurRadius: 9,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(20),
              splashColor: accent.withOpacity(0.12),
              highlightColor: accent.withOpacity(0.05),
              child: Stack(
                children: [
                  // Category artwork is presented as a contained medallion,
                  // rather than a large watermark behind the text.
                  Positioned(
                    right: 12,
                    top: 20,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 260),
                      width: 67,
                      height: 67,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: accent.withOpacity(isSelected ? 0.19 : 0.105),
                        border: Border.all(
                          color: accent.withOpacity(isSelected ? 0.40 : 0.20),
                          width: 1,
                        ),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: accent.withOpacity(0.16),
                                  blurRadius: 18,
                                  spreadRadius: 1,
                                ),
                              ]
                            : const [],
                      ),
                      child: Icon(
                        getCategoryIcon(category),
                        size: 31,
                        color: accent.withOpacity(0.95),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 240),
                      width: isSelected ? 4 : 2,
                      color: accent.withOpacity(isSelected ? 1 : 0.58),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 12, 13, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: accent.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: accent.withOpacity(0.25),
                                ),
                              ),
                              child: Text(
                                'CATEGORY',
                                style: TextStyle(
                                  color: accent,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.05,
                                ),
                              ),
                            ),
                            const Spacer(),
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 190),
                              switchInCurve: Curves.easeOutBack,
                              transitionBuilder: (child, animation) {
                                return ScaleTransition(
                                  scale: animation,
                                  child: FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  ),
                                );
                              },
                              child: isSelected
                                  ? Container(
                                      key: const ValueKey('selected'),
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        color: accent.withOpacity(0.20),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: accent.withOpacity(0.75),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.check_rounded,
                                        color: accent,
                                        size: 15,
                                      ),
                                    )
                                  : Icon(
                                      Icons.arrow_outward_rounded,
                                      key: const ValueKey('unselected'),
                                      color: Colors.white.withOpacity(0.34),
                                      size: 15,
                                    ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        // Keep the title clear of the category medallion.
                        Padding(
                          padding: const EdgeInsets.only(right: 48),
                          child: Text(
                            category,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xFFE8EDF6),
                              fontSize: 13,
                              height: 1.16,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.02,
                            ),
                          ),
                        ),
                        const SizedBox(height: 9),
                        Row(
                          children: [
                            Icon(
                              Icons.layers_rounded,
                              color: accent.withOpacity(0.95),
                              size: 12,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '$questionCount questions',
                              style: const TextStyle(
                                color: Color(0xFFABB6C9),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            if (isSelected)
                              Text(
                                'READY',
                                style: TextStyle(
                                  color: accent,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.8,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
