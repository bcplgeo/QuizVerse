import 'package:flutter/material.dart';
import '../utils/category_theme.dart';
// =========================================
// TIMER BAR WIDGET
// =========================================

class TimerBar extends StatelessWidget {
  final int timeRemaining;
  final int totalTime;
  final String category;

  const TimerBar({
    super.key,
    required this.timeRemaining,
    required this.totalTime,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final double progress = timeRemaining / totalTime;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Row(
              children: [

                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: LinearProgressIndicator(
                      value: progress,
                      minHeight: 8,
                      color: getCategoryColor(category),
                      backgroundColor: Colors.white54,
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Text(
                  '⏱ ${timeRemaining}s',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: getCategoryForeground(category),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
// =========================================
// END OF FILE
// =========================================