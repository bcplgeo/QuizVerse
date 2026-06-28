import 'package:flutter/material.dart';

// =========================================
// LIVES WIDGET
// =========================================

class LivesWidget extends StatelessWidget {
  final int lives;

  const LivesWidget({
    super.key,
    required this.lives,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        lives,
            (index) {
          return const Padding(
            padding: EdgeInsets.only(
              right: 4,
            ),
            child: Text(
              '❤️',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          );
        },
      ),
    );
  }
}

// =========================================
// END OF FILE
// =========================================