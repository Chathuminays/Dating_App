// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment_2/forgot_password_page.dart';
import 'package:assignment_2/home.dart';
import 'package:assignment_2/register_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Row with images and text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 1),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Heart image and login text
                  Image.asset(
                    'assets/heart.png',
                    height: 100,
                    width: 120,
                  ),
                  Text(
                    'Login to \na lovely \nlife.',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  // Couple image
                  Image.asset(
                    'assets/couple.png',
                    width: 160,
                    height: 280,
                  ),
                ],
              ),
            ],
          ),
          // Vertical spacing
          SizedBox(height: 20),
          // Form section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Email text and input field
                Text(
                  'Enter Your Email',
                  style: TextStyle(
                    color: Color(0xFF5E5E5E),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  style: TextStyle(color: Color(0xFF5E5E5E)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF0F0F0), 
                    hintStyle: TextStyle(color: Color(0xFF5E5E5E)),
                    contentPadding: EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), 
                      borderSide: BorderSide.none, 
                    ),
                  ),
                ),
                // Vertical spacing
                SizedBox(height: 15),
                // Password text and input field
                Text(
                  'Enter Your Password',
                  style: TextStyle(
                    color: Color(0xFF5E5E5E),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Color(0xFF5E5E5E)), 
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF0F0F0), 
                    hintStyle: TextStyle(color: Color(0xFF5E5E5E)),
                    contentPadding: EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), 
                      borderSide: BorderSide.none, 
                    ),
                  ),
                ),
                // Vertical spacing
                SizedBox(height: 10),
                // Trouble login text with navigation to ForgotPassword screen
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Trouble login?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                // Vertical spacing
                SizedBox(height: 20),
                // Login button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFA5672), 
                    fixedSize: Size(360, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), 
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Vertical spacing
                SizedBox(height: 20),
                // Divider with "Or" text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 70),
                        child: Divider(
                          color: Color(0xFF9D9D9D),
                          thickness: 0.5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or',
                        style: TextStyle(
                          color: Color(0xFF9D9D9D),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 70),
                        child: Divider(
                          color: Color(0xFF9D9D9D),
                          thickness: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
                // Vertical spacing
                SizedBox(height: 20),
                // Social media login buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Google login button
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Color(0xFFFF3D00), 
                            width: 1, 
                          ),
                        ),
                      ),
                      child: Image.asset('assets/google.png', height: 24),
                    ),
                    // Spacing between buttons
                    SizedBox(width: 10),
                    // Facebook login button
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Color(0xFF1976D2), 
                            width: 1, 
                          ),
                        ),
                      ),
                      child: Image.asset('assets/facebook.png', height: 24),
                    ),
                  ],
                ),
                // Vertical spacing
                SizedBox(height: 20),
                // Navigation to Register screen
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                // Vertical spacing
                SizedBox(height: 20),
                // Terms and conditions text
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                    textAlign: TextAlign.center, 
                    text: TextSpan(
                      style: TextStyle(
                        color: Color(0xFF5E5E5E),
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: "By continuing to login, you accept our company’s ",
                        ),
                        TextSpan(
                          text: "Terms & Conditions",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: " and ",
                        ),
                        TextSpan(
                          text: "Privacy Policies",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: ".",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
