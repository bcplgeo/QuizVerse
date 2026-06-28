import 'package:flutter/material.dart';

// =========================================
// CATEGORY ACCENT COLOR
// =========================================

Color getCategoryColor(String category) {
  switch (category) {
    case 'Science':
      return const Color(0xFF1565C0);

    case 'History':
      return const Color(0xFF6D4C41);

    case 'Geography':
      return const Color(0xFF00897B);

    case 'Sports':
      return const Color(0xFF8E24AA);

    case 'Technology':
      return const Color(0xFF00838F);

    case 'General Knowledge':
      return const Color(0xFFF9A825);

    case 'Environment':
      return const Color(0xFF2E7D32);

    default:
      return Colors.deepPurple;
  }
}

// =========================================
// CATEGORY FOREGROUND COLOR
// =========================================

Color getCategoryForeground(String category) {
  switch (category) {
    case 'Science':
      return const Color(0xFF0D47A1);

    case 'History':
      return const Color(0xFF3E2723);

    case 'Geography':
      return const Color(0xFF004D40);

    case 'Sports':
      return const Color(0xFF4A148C);

    case 'Technology':
      return const Color(0xFF004D40);

    case 'General Knowledge':
      return const Color(0xFFE65100);

    case 'Environment':
      return const Color(0xFF1B5E20);

    default:
      return Colors.black87;
  }
}

// =========================================
// CATEGORY ICON
// =========================================

IconData getCategoryIcon(String category) {
  switch (category) {
    case 'Science':
      return Icons.science;

    case 'History':
      return Icons.history_edu;

    case 'Geography':
      return Icons.public;

    case 'Sports':
      return Icons.sports_soccer;

    case 'Technology':
      return Icons.memory;

    case 'General Knowledge':
      return Icons.lightbulb;

    case 'Environment':
      return Icons.eco;

    default:
      return Icons.quiz;
  }
}

// =========================================
// CATEGORY LIGHT BACKGROUND
// =========================================

Color getCategoryButtonBackground(String category) {
  switch (category) {
    case 'Science':
      return const Color(0xFFD6EAF8);

    case 'History':
      return const Color(0xFFE8DDD6);

    case 'Geography':
      return const Color(0xFFD2F0EC);

    case 'Sports':
      return const Color(0xFFEADCF5);

    case 'Technology':
      return const Color(0xFFD7F3F6);

    case 'General Knowledge':
      return const Color(0xFFFFF0C7);

    case 'Environment':
      return const Color(0xFFDCEFD8);

    default:
      return const Color(0xFFEEEEEE);
  }
}