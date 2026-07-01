// =============================================================
// START: IMPORTS
// =============================================================

import 'package:flutter/material.dart';
import '../services/storage_service.dart';
import '../services/audio_manager.dart';
import '../services/vibration_manager.dart';

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
            leading: Icon(Icons.star_rate),
            title: Text("Rate QuizVerse"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share QuizVerse"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text("Support"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text("Privacy Policy"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("About QuizVerse"),
          ),

          SizedBox(height: 20),

          Center(
            child: Text(
              "Version 1.0.0",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),

          SizedBox(height: 8),

          Center(
            child: Text(
              "Made with ❤️ by Mann'zVerse",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),

          SizedBox(height: 30),

        ],
      ),
    );
  }
}

// =============================================================
// END: SETTINGS SCREEN
// =============================================================