import '../models/question.dart';

// Original question banks.
import '../data/science_questions.dart';
import '../data/indian_history_questions.dart';
import '../data/geography_questions.dart';
import '../data/sports_questions.dart';
import '../data/technology_questions.dart';
import '../data/environment_questions.dart';
import '../data/generalKnowledge_questions.dart';

// New V3 question banks.
import '../data/animals_wildlife_questions.dart';
import '../data/arts_literature_music_questions.dart';
import '../data/business_economics_questions.dart';
import '../data/cultures_traditions_questions.dart';
import '../data/food_beverage_questions.dart';
import '../data/human_body_health_questions.dart';
import '../data/languages_linguistics_questions.dart';
import '../data/mythology_folklore_questions.dart';
import '../data/psychology_human_behaviour_questions.dart';
import '../data/space_astronomy_questions.dart';
import '../data/travel_tourism_questions.dart';
import '../data/world_history_questions.dart';

// =========================================
// QUESTION REPOSITORY
// =========================================

class QuestionRepository {
  static List<Question> getQuestions(String category) {
    switch (category) {
      // Original V2 categories — preserved.
      case 'Science':
        return List.from(scienceQuestions);

      case 'Indian History':
        return List.from(indianHistoryQuestions);

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

      // New V3 categories.
      case 'Animals & Wildlife':
        return List.from(animalsWildlifeQuestions);

      case 'Arts, Literature & Music':
        return List.from(artsLiteratureMusicQuestions);

      case 'Business & Economics':
        return List.from(businessEconomicsQuestions);

      case 'Cultures & Traditions':
        return List.from(culturesTraditionsQuestions);

      case 'Food & Beverage':
        return List.from(foodBeverageQuestions);

      case 'Human Body & Health':
        return List.from(humanBodyHealthQuestions);

      case 'Languages & Linguistics':
        return List.from(languagesLinguisticsQuestions);

      case 'Mythology & Folklore':
        return List.from(mythologyFolkloreQuestions);

      case 'Psychology & Human Behaviour':
        return List.from(psychologyHumanBehaviourQuestions);

      case 'Space & Astronomy':
        return List.from(spaceAstronomyQuestions);

      case 'Travel & Tourism':
        return List.from(travelTourismQuestions);

      case 'World History':
        return List.from(worldHistoryQuestions);

      case 'All':
        return [
          // Original V2 banks.
          ...scienceQuestions,
          ...indianHistoryQuestions,
          ...geographyQuestions,
          ...sportsQuestions,
          ...technologyQuestions,
          ...environmentQuestions,
          ...generalKnowledgeQuestions,

          // New V3 banks.
          ...animalsWildlifeQuestions,
          ...artsLiteratureMusicQuestions,
          ...businessEconomicsQuestions,
          ...culturesTraditionsQuestions,
          ...foodBeverageQuestions,
          ...humanBodyHealthQuestions,
          ...languagesLinguisticsQuestions,
          ...mythologyFolkloreQuestions,
          ...psychologyHumanBehaviourQuestions,
          ...spaceAstronomyQuestions,
          ...travelTourismQuestions,
          ...worldHistoryQuestions,
        ];

      default:
        throw Exception('Unknown category: $category');
    }
  }
}

// =========================================
// END OF FILE
// =========================================
