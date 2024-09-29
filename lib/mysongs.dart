import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MySongsScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class MySongsScreen extends StatefulWidget {

   const MySongsScreen({super.key});

  @override
  State<MySongsScreen> createState() => _MySongsScreenState();
}

class _MySongsScreenState extends State<MySongsScreen> {
  final List<Map<String, String>> songs = [
    {'title': 'Classical Waltz'},
    {'title': 'Hip Hop'},
    {'title': 'Bulgarian Folklore'},
    {'title': 'Jazz'},
    {'title': 'Techno'},
    {'title': 'Latin Music'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20004D), // Dark purple background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('My Songs', style: TextStyle(fontSize: 36, color: Colors.white)),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return SongItem(songTitle: songs[index]['title']!);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF20004D),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Your songs',
          ),
        ],
      ),
    );
  }
}

class SongItem extends StatelessWidget {
  final String songTitle;

  const SongItem({super.key, required this.songTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.play_arrow, color: Colors.white),
            onPressed: () {
              // Handle song play
            },
          ),
          Text(
            songTitle,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.settings, color: Colors.white),
                onPressed: () {
                  // Handle song settings
                },
              ),
              IconButton(
                icon: const Icon(Icons.download, color: Colors.white),
                onPressed: () {
                  // Handle song download
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

