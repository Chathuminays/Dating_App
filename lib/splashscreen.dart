// ignore_for_file: prefer_const_constructors

import 'package:assignment_2/get_started.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Delay navigation to the next screen for 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GetstartedScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // Stack to position the background image and the text
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background image that covers the entire screen
            Center(
              child: Image.asset(
                'assets/splash-img.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Positioned text at the bottom of the screen
            Positioned(
              bottom: 170,
              child: Text(
                'Find Your Soulmate',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
