import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MusicAIGeneratorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MusicAIGeneratorScreen extends StatelessWidget {
  const MusicAIGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20004D), // Dark purple background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Musically', style: TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'Times new roman')),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: TextButton(
              onPressed: () {},
              child: const Text("Home", style: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: TextButton(
              onPressed: () {},
              child: const Text("Browse", style: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: TextButton(
              onPressed: () {},
              child: const Text("Your songs", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Main Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Music AI Generator',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times new roman',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Make your music with AI in seconds and add it to your videos, podcast, apps, and more...',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  // Generate Music Button
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.white, // Starting color of the gradient
                          Colors.deepPurpleAccent, // Ending color of the gradient
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Generate music action
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Text color
                      ),
                      child: const Text('Generate music', style: TextStyle(fontSize: 18)),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Section: What Musically Offers
                  const Text(
                    'What Musically offer?',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),

                  // Features Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildFeatureCard('Generator', 'You can generate your own unique music using AI', 'Generate'),
                      _buildFeatureCard('Browse everything', 'Browse everything you want. From song to artist', 'Browse'),
                      _buildFeatureCard('Save & download', 'Save and download your favorite tracks', 'Save'),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),

          // Footer
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200, // Light gray background
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: -5,
                  blurRadius: 10,
                  offset: const Offset(0, -3), // Negative offset for inner shadow
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: const Column(
              children: [
                Text(
                  'Musically',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Times new roman',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                ),
                SizedBox(height: 20),
                Text(
                  'Terms & Conditions\nLicenses Agreement\nPrivacy Policy\nContacts\nAbout us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper to build feature cards
  Widget _buildFeatureCard(String title, String description, String buttonLabel) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Action for the feature
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.transparent, // Text color
              side: const BorderSide(color: Colors.white), // Border
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(buttonLabel),
          ),
        ],
      ),
    );
  }
}
