import '../models/question.dart';
import '../data/history_questions.dart';
import '../data/geography_questions.dart';
import '../data/sports_questions.dart';
import '../data/technology_questions.dart';
import '../data/environment_questions.dart';
import '../data/generalKnowledge_questions.dart';

// =========================================
// QUESTION BANKS
//
// Each category has its own dedicated
// question file. This keeps the project
// modular and easy to maintain.
//
// As new categories are added, simply
// import them here and extend the switch
// statement below.
// =========================================

import '../data/science_questions.dart';

// =========================================
// QUESTION REPOSITORY
//
// Central place for loading question banks
// based on the category selected by the user.
//
// Home Screen
//      ↓
// Game Screen
//      ↓
// Question Repository
//      ↓
// Returns requested question list
// =========================================

class QuestionRepository {
  static List<Question> getQuestions(String category) {
    switch (category) {
      case 'Science':
        return List.from(scienceQuestions);

      case 'History':
        return List.from(historyQuestions);

      case 'Geography':
        return List.from(geographyQuestions);

      case 'Sports':
        return List.from(sportsQuestions);

      case 'Technology':
        return List.from(technologyQuestions);

      case 'Environment':
        return List.from(environmentQuestions);

      case 'General Knowledge':
        return List.from(generalKnowledgeQuestions);

      case 'All':
        return [
          ...scienceQuestions,
          ...historyQuestions,
          ...geographyQuestions,
          ...sportsQuestions,
          ...technologyQuestions,
          ...environmentQuestions,
          ...generalKnowledgeQuestions,
        ];

      default:
      throw Exception('Unknown category: $category');
    }
  }
}

// =========================================
// END OF FILE
// =========================================