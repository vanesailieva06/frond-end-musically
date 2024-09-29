import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginScreen(),
    debugShowCheckedModeBanner:false ,

  ));
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20004D), // Dark purple background color
      body:SingleChildScrollView(
        child:Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Log in',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Implement Google login functionality
              },
              child: const Text('Sign in with Google'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF1877F2),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Implement Facebook login functionality
              },
              child: const Text('Sign in with Facebook'),
            ),
            const SizedBox(height: 30),
            const Text(
              'OR',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'E-mail',
                hintStyle: const TextStyle(color: Colors.white70),
                filled: true,
                fillColor: const Color(0xFF310067), // Slightly lighter purple for input field
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.white70),
                filled: true,
                fillColor: const Color(0xFF310067), // Slightly lighter purple for input field
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Implement login functionality
              },
              child: const Text('Log in'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Implement forgot password functionality
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "You don't have an account?",
                  style: TextStyle(color: Colors.white70, fontSize: 16),

                ),
                TextButton(
                  onPressed: () {
                    // Navigate to create account screen
                  },
                  child: const Row(
                    children: [
                      Text(
                        'Create one',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
      ),
    );
  }
}
