import 'package:flutter/material.dart';

import '../utils/hangman_helper.dart';

// =========================================
// HANGMAN WIDGET
// =========================================

class HangmanWidget extends StatelessWidget {
  final int timeRemaining;

  const HangmanWidget({
    super.key,
    required this.timeRemaining,
  });

  @override
  Widget build(BuildContext context) {
    final stage = HangmanHelper.getStage(
      timeRemaining,
      10,
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        height: 120,
        child: CustomPaint(
          painter: HangmanPainter(stage),
        ),
      ),
    );
  }
}

// =========================================
// HANGMAN PAINTER
// =========================================

class HangmanPainter extends CustomPainter {
  final int stage;

  HangmanPainter(this.stage);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black87
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    // =========================================
    // GALLOWS
    // =========================================

    canvas.drawLine(
      const Offset(20, 112),
      const Offset(120, 112),
      paint,
    );

    canvas.drawLine(
      const Offset(45, 112),
      const Offset(45, 15),
      paint,
    );

    canvas.drawLine(
      const Offset(45, 15),
      const Offset(95, 15),
      paint,
    );

    canvas.drawLine(
      const Offset(95, 15),
      const Offset(95, 30),
      paint,
    );

    // =========================================
    // HEAD
    // =========================================

    if (stage >= 1) {
      canvas.drawCircle(
        const Offset(95, 42),
        10,
        paint,
      );
    }

    // =========================================
    // BODY
    // =========================================

    if (stage >= 2) {
      canvas.drawLine(
        const Offset(95, 52),
        const Offset(95, 82),
        paint,
      );
    }

    // =========================================
    // LEFT ARM
    // =========================================

    if (stage >= 3) {
      canvas.drawLine(
        const Offset(95, 60),
        const Offset(80, 70),
        paint,
      );
    }

    // =========================================
    // RIGHT ARM
    // =========================================

    if (stage >= 4) {
      canvas.drawLine(
        const Offset(95, 60),
        const Offset(110, 70),
        paint,
      );
    }

    // =========================================
    // LEFT LEG
    // =========================================

    if (stage >= 5) {
      canvas.drawLine(
        const Offset(95, 70),
        const Offset(82, 90),
        paint,
      );
    }

    // =========================================
    // RIGHT LEG
    // =========================================

    if (stage >= 6) {
      canvas.drawLine(
        const Offset(95, 70),
        const Offset(108, 90),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant HangmanPainter oldDelegate) {
    return oldDelegate.stage != stage;
  }
}

// =========================================
// END OF FILE
// =========================================