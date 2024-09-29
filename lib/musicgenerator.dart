import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MusicGeneratorScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class MusicGeneratorScreen extends StatefulWidget {
  const MusicGeneratorScreen({super.key});

  @override
  _MusicGeneratorScreenState createState() => _MusicGeneratorScreenState();
}

class _MusicGeneratorScreenState extends State<MusicGeneratorScreen> {
  String selectedGenre = "Hip Hop"; // Default genre
  final List<String> genres = ['Hip Hop', 'Jazz', 'Classical', 'Rock', 'Pop']; // List of genres

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20004D), // Dark purple background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Musically', style: TextStyle(fontSize: 24, color: Colors.white, fontFamily:'Times New Roman' )),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIconButton(Icons.music_note, 'Genre'),
                _buildIconButton(Icons.add, 'Duration'),
                _buildIconButton(Icons.add, 'Tempo'),
                _buildIconButton(Icons.add, 'Instruments'),
                _buildIconButton(Icons.add, 'Energy'),
                _buildIconButton(Icons.add, 'Key'),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.music_note),
                  Text(
                    selectedGenre,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Generate music action
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white, // Text color
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Generate', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 60),
            const Text(
              'Musically - The Best AI\nMusic Generator',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Text(
              'Build your song\nSelect genre, tempo and everything you need',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 20),
             Text(
              'Generate Tracks\nGet new song tracks and listen to them',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70.withOpacity(0.7), fontSize: 16, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 20),
             Text(
              'Save & Download\nSave and download your favorite song',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70.withOpacity(0.7), fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build each icon button
  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.black),
        ),
        const SizedBox(height: 10),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
