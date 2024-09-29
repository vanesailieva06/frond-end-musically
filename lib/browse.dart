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
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return SongItem(songTitle: songs[index]['title']!);
        },
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

