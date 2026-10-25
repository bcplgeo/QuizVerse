import 'package:flutter/material.dart';


import 'screens/splash_screen.dart';

import 'services/storage_service.dart';
import 'services/audio_manager.dart';
import 'services/vibration_manager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:quizverse/managers/ad_manager.dart';

// START: ROOT APPLICATION
// =============================================================
/// Root widget for QuizVerse.

class QuizVerseApp extends StatelessWidget {
  const QuizVerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'QuizVerse',

      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),

      home: const SplashScreen(),
    );
  }
}
// =============================================================

// END: ROOT APPLICATION
// =============================================================
/// =============================================================
/// APPLICATION ENTRY POINT
/// =============================================================
///
/// Initializes all persistent services before launching the app.
/// This ensures user preferences (such as Sound ON/OFF)
/// are available from the very first screen.
///
Future<void> main() async {
  // Required before using async platform services.
  WidgetsFlutterBinding.ensureInitialized();
  // Configure Google Mobile Ads before initialization.
// Limits ad content to G-rated ads to match QuizVerse's
// current family-friendly content rating.
  // Configure Google Mobile Ads for QuizVerse's mixed-age audience.
// Child-directed treatment prevents interest-based/remarketing ads
// from being served under the child-directed treatment.
// G-rated filtering restricts ad content to G-rated ads.
  final RequestConfiguration requestConfiguration =
  RequestConfiguration(
    tagForChildDirectedTreatment:
    TagForChildDirectedTreatment.yes,
    maxAdContentRating: MaxAdContentRating.g,
  );

  MobileAds.instance.updateRequestConfiguration(
    requestConfiguration,
  );

  await MobileAds.instance.initialize();

  MobileAds.instance.updateRequestConfiguration(
    requestConfiguration,
  );

  await MobileAds.instance.initialize();

  AdManager.loadInterstitialAd();

  // Load the user's saved sound preference.
  final bool soundEnabled =
  await StorageService.loadSoundEnabled();

  // Initialize the Audio Manager.
  AudioManager.soundEnabled = soundEnabled;

  // Load the user's saved vibration preference.
  final bool vibrationEnabled =
  await StorageService.loadVibrationEnabled();

// Initialize the Vibration Manager.
  VibrationManager.vibrationEnabled = vibrationEnabled;

  // Launch the application.
  runApp(const QuizVerseApp());
}
// =============================================================
