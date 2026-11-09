import 'package:flutter/material.dart';

// =========================================
// CATEGORY ACCENT COLOR
// =========================================

Color getCategoryColor(String category) {
  switch (category) {
    case 'Science':
      return const Color(0xFF58A6FF);
    case 'Indian History':
      return const Color(0xFFC79A78);
    case 'Geography':
      return const Color(0xFF42C6B5);
    case 'Sports':
      return const Color(0xFFC18BFF);
    case 'Technology':
      return const Color(0xFF45C7D4);
    case 'General Knowledge':
      return const Color(0xFFFFC66D);
    case 'Environment':
      return const Color(0xFF80C783);
    case 'Animals & Wildlife':
      return const Color(0xFFA5C96B);
    case 'Arts, Literature & Music':
      return const Color(0xFFD19BFF);
    case 'Business & Economics':
      return const Color(0xFF8FA8FF);
    case 'Cultures & Traditions':
      return const Color(0xFFE0A17E);
    case 'Food & Beverage':
      return const Color(0xFFFFAD70);
    case 'Human Body & Health':
      return const Color(0xFFFF8585);
    case 'Languages & Linguistics':
      return const Color(0xFF67C9C0);
    case 'Mythology & Folklore':
      return const Color(0xFFB49AFF);
    case 'Psychology & Human Behaviour':
      return const Color(0xFFD39BEA);
    case 'Space & Astronomy':
      return const Color(0xFF9AA9FF);
    case 'Travel & Tourism':
      return const Color(0xFF73C6F2);
    case 'World History':
      return const Color(0xFFD0A58D);
    case 'All':
      return const Color(0xFFB69CFF);
    default:
      return const Color(0xFFB69CFF);
  }
}

// =========================================
// CATEGORY FOREGROUND COLOR
// =========================================

Color getCategoryForeground(String category) {
  return Colors.white;
}

// =========================================
// CATEGORY ICON
// =========================================

IconData getCategoryIcon(String category) {
  switch (category) {
    case 'Science':
      return Icons.science_outlined;
    case 'Indian History':
      return Icons.history_edu_outlined;
    case 'Geography':
      return Icons.public_outlined;
    case 'Sports':
      return Icons.sports_soccer_outlined;
    case 'Technology':
      return Icons.memory_outlined;
    case 'General Knowledge':
      return Icons.lightbulb_outline;
    case 'Environment':
      return Icons.eco_outlined;
    case 'Animals & Wildlife':
      return Icons.pets_outlined;
    case 'Arts, Literature & Music':
      return Icons.palette_outlined;
    case 'Business & Economics':
      return Icons.business_center_outlined;
    case 'Cultures & Traditions':
      return Icons.diversity_3_outlined;
    case 'Food & Beverage':
      return Icons.restaurant_outlined;
    case 'Human Body & Health':
      return Icons.health_and_safety_outlined;
    case 'Languages & Linguistics':
      return Icons.translate_outlined;
    case 'Mythology & Folklore':
      return Icons.auto_stories_outlined;
    case 'Psychology & Human Behaviour':
      return Icons.psychology_outlined;
    case 'Space & Astronomy':
      return Icons.rocket_launch_outlined;
    case 'Travel & Tourism':
      return Icons.flight_outlined;
    case 'World History':
      return Icons.account_balance_outlined;
    case 'All':
      return Icons.apps_rounded;
    default:
      return Icons.quiz_outlined;
  }
}

// =========================================
// CATEGORY LIGHT BACKGROUND
// =========================================
// Retained for compatibility with any existing screens that use this helper.

Color getCategoryButtonBackground(String category) {
  return getCategoryColor(category).withOpacity(0.16);
}

// =========================================
// END OF FILE
// =========================================
