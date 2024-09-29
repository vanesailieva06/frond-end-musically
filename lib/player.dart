import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MusicPlayerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF30004B), // Starting color (purple)
              Color(0xFF5B156E), // Middle color (lighter purple)
              Color(0xFF70237C), // Ending color (pinkish purple)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AppBar (custom design)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Musically',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: 'Times new roman',
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Home", style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Browse", style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Your songs", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),

            // Music Artwork
            Container(
              width: 230,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 20,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/458401865_414934994571463_8270090451350892313_n.png', // Replace with your image asset
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Music Title and Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Latin Music',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Times new roman',
                  ),
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: const Icon(Icons.download, color: Colors.white, size: 30,),
                  onPressed: () {
                    // Download action
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white, size: 30,),
                  onPressed: () {
                    // Favorite action
                  },
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Seekbar
            Slider(
              value: 0.5, // Current position
              onChanged: (value) {
                // Change the song position
              },
              activeColor: Colors.white,
              inactiveColor: Colors.white38,
            ),

            const SizedBox(height: 20),

            // Playback Controls
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.skip_previous, color: Colors.white),
                  iconSize: 40,
                  onPressed: () {
                    // Previous song action
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow, color: Colors.white),
                  iconSize: 50,
                  onPressed: () {
                    // Play/Pause action
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.skip_next, color: Colors.white),
                  iconSize: 40,
                  onPressed: () {
                    // Next song action
                  },
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Back Button (Bottom)
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              iconSize: 30,
              onPressed: () {
                // Go back action
              },
            ),
          ],
        ),
      ),
    );
  }
}
