// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment_2/login_page.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Padding with form elements
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Vertical spacing
                SizedBox(height: 100),
                // Image for the forgot password
                Center(
                  child: Image.asset(
                    'assets/forgot.png',
                    width: double.infinity,
                  ),
                ),
                // Heading for the screen
                Center(
                  child: Text(
                    'Trouble Log In?',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Vertical spacing
                SizedBox(height: 30),
                // "Enter Your Email" text
                Text(
                  'Enter Your Email',
                  style: TextStyle(
                    color: Color(0xFF5E5E5E),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Email input field
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
                // Send Reset Email button
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFA5672), 
                    fixedSize: Size(360, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), 
                    ),
                  ),
                  child: Text(
                    'Send Reset Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Vertical spacing
                SizedBox(height: 20),
                // Back link to Login screen
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Center(
                        child: Text(
                          "back",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Vertical spacing
                SizedBox(height: 120),
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
