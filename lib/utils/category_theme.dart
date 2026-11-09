import 'package:flutter/material.dart';

// =========================================
// CATEGORY ACCENT COLOR
// =========================================

Color getCategoryColor(String category) {
  switch (category) {
    case 'Science':
      return const Color(0xFF1565C0);

    case 'Indian History':
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

    case 'Animals & Wildlife':
      return const Color(0xFF558B2F);

    case 'Arts, Literature & Music':
      return const Color(0xFF8E24AA);

    case 'Business & Economics':
      return const Color(0xFF3949AB);

    case 'Cultures & Traditions':
      return const Color(0xFFAD5A32);

    case 'Food & Beverage':
      return const Color(0xFFEF6C00);

    case 'Human Body & Health':
      return const Color(0xFFE53935);

    case 'Languages & Linguistics':
      return const Color(0xFF00838F);

    case 'Mythology & Folklore':
      return const Color(0xFF5E35B1);

    case 'Psychology & Human Behaviour':
      return const Color(0xFF6A1B9A);

    case 'Space & Astronomy':
      return const Color(0xFF283593);

    case 'Travel & Tourism':
      return const Color(0xFF039BE5);

    case 'World History':
      return const Color(0xFF795548);
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

    case 'Indian History':
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

    case 'Animals & Wildlife':
      return const Color(0xFF33691E);

    case 'Arts, Literature & Music':
      return const Color(0xFF4A148C);

    case 'Business & Economics':
      return const Color(0xFF1A237E);

    case 'Cultures & Traditions':
      return const Color(0xFF6D321B);

    case 'Food & Beverage':
      return const Color(0xFFE65100);

    case 'Human Body & Health':
      return const Color(0xFFB71C1C);

    case 'Languages & Linguistics':
      return const Color(0xFF004D40);

    case 'Mythology & Folklore':
      return const Color(0xFF311B92);

    case 'Psychology & Human Behaviour':
      return const Color(0xFF4A148C);

    case 'Space & Astronomy':
      return const Color(0xFF1A237E);

    case 'Travel & Tourism':
      return const Color(0xFF01579B);

    case 'World History':
      return const Color(0xFF3E2723);
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

    case 'Indian History':
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

    case 'Animals & Wildlife':
      return Icons.pets;

    case 'Arts, Literature & Music':
      return Icons.palette;

    case 'Business & Economics':
      return Icons.business_center;

    case 'Cultures & Traditions':
      return Icons.diversity_3;

    case 'Food & Beverage':
      return Icons.restaurant;

    case 'Human Body & Health':
      return Icons.health_and_safety;

    case 'Languages & Linguistics':
      return Icons.translate;

    case 'Mythology & Folklore':
      return Icons.auto_stories;

    case 'Psychology & Human Behaviour':
      return Icons.psychology;

    case 'Space & Astronomy':
      return Icons.rocket_launch;

    case 'Travel & Tourism':
      return Icons.flight;

    case 'World History':
      return Icons.account_balance;
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

    case 'Indian History':
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

    case 'Animals & Wildlife':
      return const Color(0xFFE4EFD9);

    case 'Arts, Literature & Music':
      return const Color(0xFFF0DFF5);

    case 'Business & Economics':
      return const Color(0xFFE0E4F7);

    case 'Cultures & Traditions':
      return const Color(0xFFF4E4DA);

    case 'Food & Beverage':
      return const Color(0xFFFFE8D1);

    case 'Human Body & Health':
      return const Color(0xFFF9DEDE);

    case 'Languages & Linguistics':
      return const Color(0xFFD8EEEE);

    case 'Mythology & Folklore':
      return const Color(0xFFE7DFF5);

    case 'Psychology & Human Behaviour':
      return const Color(0xFFEEDFF2);

    case 'Space & Astronomy':
      return const Color(0xFFDDE2F5);

    case 'Travel & Tourism':
      return const Color(0xFFD9EFFA);

    case 'World History':
      return const Color(0xFFE9DFD8);
    default:
      return const Color(0xFFEEEEEE);
  }
}