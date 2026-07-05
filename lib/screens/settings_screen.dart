// =============================================================
// START: IMPORTS
// =============================================================

import 'package:flutter/material.dart';
import '../services/storage_service.dart';
import '../services/audio_manager.dart';
import '../services/vibration_manager.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about_screen.dart';

// =============================================================
// END: IMPORTS
// =============================================================

// =============================================================
// START: SETTINGS SCREEN
//
// Purpose:
// Central location for all QuizVerse settings.
//
// Future:
// • Sound
// • Vibration
// • Rate App
// • Share
// • Support
// • Privacy Policy
// • About
//
// =============================================================

// =============================================================
// START: Stateful Settings Screen
//
// Purpose:
// Allows the Settings page to update switches
// dynamically when the user interacts with them.
//
// =============================================================

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

// =============================================================
// START: Settings State
//
// Purpose:
// Stores the current state of settings.
//
// =============================================================

  bool soundEnabled = true;
  bool vibrationEnabled = true;

// =============================================================
// END: Settings State
// =============================================================
  // =============================================================
// START: Load Saved Settings
//
// Purpose:
// Load previously saved user preferences from
// permanent storage when the screen opens.
//
// =============================================================

  Future<void> loadSettings() async {
    final savedSound = await StorageService.loadSoundEnabled();
    final savedVibration =
    await StorageService.loadVibrationEnabled();

    if (!mounted) return;

    setState(() {
      soundEnabled = savedSound;
      vibrationEnabled = savedVibration;
    });

    AudioManager.soundEnabled = savedSound;
    VibrationManager.vibrationEnabled = savedVibration;
  }

// =============================================================
// END: Load Saved Settings
// =============================================================

  // =============================================================
// START: In-App Review
//
// Purpose:
// Provides access to Google's native
// Play Store review dialog.
//
// =============================================================

  final InAppReview inAppReview = InAppReview.instance;

// =============================================================
// END: In-App Review
// =============================================================

  // =============================================================
// START: Initialize Settings
// =============================================================

  @override
  void initState() {
    super.initState();

    loadSettings();
  }

// =============================================================
// END: Initialize Settings
// =============================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),

      body: ListView(
        children: [

          SizedBox(height: 10),

          // =============================================================
// START: Preferences Section
//
// Purpose:
// Groups gameplay-related settings together.
//
// =============================================================

          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
            child: Text(
              "PREFERENCES",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                letterSpacing: 1.2,
              ),
            ),
          ),

// =============================================================
// END: Preferences Section
// =============================================================

          SwitchListTile(
            secondary: const Icon(Icons.volume_up),

            title: const Text("Sound Effects"),

            subtitle: const Text(
              "Enable or disable quiz sounds",
            ),

            value: soundEnabled,

            // =============================================================
// START: Save Sound Preference
//
// Purpose:
// Update the UI and save the user's preference
// permanently on the device.
//
// =============================================================

            onChanged: (value) async {
              setState(() {
                soundEnabled = value;
              });

              // Tell AudioManager immediately.
              AudioManager.soundEnabled = value;

              // Save permanently.
              await StorageService.saveSoundEnabled(value);
            },

// =============================================================
// END: Save Sound Preference
// =============================================================
          ),

// =============================================================
// END: Interactive Sound Switch
// =============================================================

// =============================================================
// END: Sound Setting Tile
// =============================================================

          Divider(),

          SwitchListTile(
            secondary: const Icon(Icons.vibration),

            title: const Text("Vibration"),

            subtitle: const Text(
              "Enable or disable vibration feedback",
            ),

            value: vibrationEnabled,

            onChanged: (value) async {
              setState(() {
                vibrationEnabled = value;
              });

              // Update the Vibration Manager immediately.
              VibrationManager.vibrationEnabled = value;

              // Save permanently.
              await StorageService.saveVibrationEnabled(value);
            },
          ),

          Divider(),

          // =============================================================
// START: Information Section
// =============================================================

          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
            child: Text(
              "INFORMATION",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                letterSpacing: 1.2,
              ),
            ),
          ),

// =============================================================
// END: Information Section
// =============================================================

          ListTile(
            leading: const Icon(Icons.star_rate),

            title: const Text("Rate QuizVerse"),

            onTap: () async {
              if (await inAppReview.isAvailable()) {
                await inAppReview.requestReview();
              }
            },
          ),

          Divider(),

          ListTile(
            leading: const Icon(Icons.share),

            title: const Text("Share QuizVerse"),

            onTap: () {
              SharePlus.instance.share(
                ShareParams(
                  text:
                  "I'm enjoying QuizVerse! 🎯\n\nChallenge yourself with fun quizzes across multiple categories.\n\nComing soon on Google Play!",
                ),
              );
            },
          ),

          Divider(),

          ListTile(
            leading: const Icon(Icons.support_agent),

            title: const Text("Support"),

            onTap: () async {

              final Uri emailUri = Uri(
                scheme: 'mailto',
                path: 'mannzverse.apps@gmail.com',
                query:
                'subject=QuizVerse Support'
                    '&body=Hello MannzVerse Team,%0D%0A%0D%0A'
                    'I need help with QuizVerse.%0D%0A%0D%0A'
                    '------------------------------%0D%0A%0D%0A'
                    'QuizVerse Version: 1.0.0%0D%0A'
                    'Android Version:%0D%0A'
                    'Device:%0D%0A%0D%0A'
                    'Issue Description:%0D%0A',
              );

              await launchUrl(
                emailUri,
                mode: LaunchMode.externalApplication,
              );
            },
          ),

          Divider(),

          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text("Privacy Policy"),
            onTap: () async {
              final Uri privacyUri = Uri.parse(
                'https://bcplgeo.github.io/QuizVerse-Privacy/',
              );

              await launchUrl(
                privacyUri,
                mode: LaunchMode.externalApplication,
              );
            },
          ),

          Divider(),

          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("About QuizVerse"),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const AboutScreen(),
                ),
              );
            },
          ),


        ],
      ),
    );
  }
}

// =============================================================
// END: SETTINGS SCREEN
// =============================================================