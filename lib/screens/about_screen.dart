import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About QuizVerse"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [

            const SizedBox(height: 20),

            Column(
              children: [
                Image.asset(
                  'assets/images/quizverse_logo.png',
                  height: 140,
                ),

                const SizedBox(height: 20),

                const Text(
                  "Challenge Your Mind.\nExpand Your Knowledge.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  "Version 1.0.0",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),


            const SizedBox(height: 30),

            const Text(
              "QuizVerse is a fast-paced trivia game designed to challenge your knowledge across multiple categories.\n\n"
                  "Answer quickly, protect your lives, achieve high scores, and keep learning while having fun.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 35),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Developer"),
              subtitle: const Text("MannzVerse"),
            ),

            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Contact"),
              subtitle: const Text("mannzverse.apps@gmail.com"),
            ),

            ListTile(
              leading: const Icon(Icons.code),
              title: const Text("Built With"),
              subtitle: const Text("Flutter"),
            ),

            const SizedBox(height: 30),

            const Text(
              "© 2026 MannzVerse\nAll Rights Reserved.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}