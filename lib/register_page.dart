// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:assignment_2/login_page.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                // Centered image for registration
                Center(
                  child: Image.asset(
                    'assets/register.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                // Heading for the registration screen
                Text(
                  'Register Here',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Vertical spacing
                SizedBox(height: 10),
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
                SizedBox(height: 10),
                // "Enter Your Mobile Number" text
                Text(
                  'Enter Your Mobile Number',
                  style: TextStyle(
                    color: Color(0xFF5E5E5E),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Mobile number input field
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
                SizedBox(height: 10),
                // "Enter Your Password" text
                Text(
                  'Enter Your Password',
                  style: TextStyle(
                    color: Color(0xFF5E5E5E),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Password input field
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
                SizedBox(height: 15),
                // Register button
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
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Vertical spacing
                SizedBox(height: 20),
                // Divider and "Or" text
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
                    SizedBox(width: 10),
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
                //  text with link to Login screen
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Already have an account?",
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
                          text: "By continuing to register, you accept our company’s ",
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
