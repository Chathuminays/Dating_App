// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:assignment_2/login_page.dart';
import 'package:flutter/material.dart';

class GetstartedScreen extends StatefulWidget {
  const GetstartedScreen({Key? key}) : super(key: key);

  @override
  _GetstartedScreenState createState() => _GetstartedScreenState();
}

class _GetstartedScreenState extends State<GetstartedScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Vertical spacing
            SizedBox(
              height: 60,
            ),
            // Image at the top of the screen
            Image.asset(
              'assets/people.png', 
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // Vertical spacing
            SizedBox(height: 30),
            // Subtitle text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                "Let's get closer ☺️",
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                ),
              ),
            ),
            // Vertical spacing
            SizedBox(height: 12),
            // Title text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'The best place to meet your future partner.',
                style: TextStyle(
                  fontSize: 36, 
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                  letterSpacing: 2,
                ),
              ),
            ),
            // Vertical spacing
            SizedBox(height: 30),
            // Get Started button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFA5672), 
                  fixedSize: Size(320, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // Vertical spacing
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
