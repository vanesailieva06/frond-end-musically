import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: OnboardingScreen(),
    debugShowCheckedModeBanner:false ,
  ));
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          OnboardingPageOne(),
          OnboardingPageTwo(),
          OnboardingPageThree(),
        ],
      ),
    );
  }
}

class OnboardingPageOne extends StatelessWidget {
  const OnboardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'images/458985030_537957418782975_8982643355084464783_n.png', // Use the appropriate image from assets
              fit: BoxFit.cover,
            ),
          ),
          // Overlaying text and buttons
          const Positioned(
            bottom: 130,
            left: 0,
            right: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Find music you love.\nMake your style.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontStyle: FontStyle.italic
                  ),
                ),
                SizedBox(height: 20),
                Icon(Icons.arrow_forward, color: Colors.white, size: 36,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'images/458985030_537957418782975_8982643355084464783_n.png', // Use the appropriate image from assets
              fit: BoxFit.cover,
            ),
          ),
          // Overlaying text and buttons
          const Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Main title at the top
                Text(
                  'What Musically have?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Icon(Icons.arrow_forward, color: Colors.white, size: 36,),



                // Forward arrow
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
              bottom:530,
              left:130,
              right: 0,
              child: Column(children: [
            Container(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(20),
            ),
              child: const Text(
                'Generator',
                style: TextStyle(color: Colors.black, fontSize: 24),

              ),
            ),
            const SizedBox(height: 30,)
          ],)),
          Positioned(bottom:700,
              left:-150,
              right:10,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.6), // Transparent purple
                      borderRadius: BorderRadius.circular(20), // Increased corner radius
                    ),
                    child: const Text(
                      'Browse music',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              )),
          Positioned(bottom:370,
              left:0,
              right:100,
              child: Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.6), // Transparent purple
                borderRadius: BorderRadius.circular(20), // Increased corner radius
              ),
              child: const Text(
                'Save and download',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],))
        ],
      ),
    );
  }
}




class OnboardingPageThree extends StatelessWidget {
  const OnboardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'images/458985030_537957418782975_8982643355084464783_n.png', // Use the appropriate image from assets
              fit: BoxFit.cover,
            ),
          ),
          // Overlaying text and buttons
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Musically',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Create Account Page
                  },
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
                  child: const Text('Create an account', style: TextStyle(
                    fontSize: 18
                  ),),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to login screen
                  },
                  child: const Text('I already have an account', style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
