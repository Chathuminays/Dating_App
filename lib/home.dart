// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String logoPath;
  final bool isFirstChat; 

  MessageItem({
    Key? key,
    required this.name,
    required this.message,
    required this.time,
    required this.logoPath,
    this.isFirstChat = false, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(logoPath),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: isFirstChat ? Color(0xFFFA5672) : Color.fromARGB(255, 113, 112, 112), 
                      fontWeight: isFirstChat ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  if (isFirstChat)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        color: Color(0xFFE94057), 
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '1', 
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
      onTap: () {
        
      },
    );
  }
}



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [     
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hi, ',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFA5672),
                          ),
                        ),
                        TextSpan(
                          text: 'Indusara',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10, top: 10),
                  child: Icon(
                      Icons.settings,
                      color: Color(0xFFFA5672),
                    ),
                ),
              ],
            ),
           
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            
            Text(
              'Activities',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/1.png',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Me',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/2.png',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Emma',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/3.png',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Emilie',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/4.png',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Ava',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/5.png',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Chloe',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/6.png',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Penelope',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/7.png',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Sophia',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            Text(
              'Messages',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            
            MessageItem(
              name: 'Emilie',
              message:'Typing...',
              time: '1 min',
              logoPath: 'assets/3.png',
              isFirstChat: true,
            ),
            
            MessageItem(
              name: 'Shopia',
              message: 'Sticker 🥰',
              time: '24 min',
              logoPath: 'assets/7.png',
            ),
            
            MessageItem(
              name: 'Chloe',
              message: 'What\'s up?',
              time: '14:45',
              logoPath: 'assets/5.png',
            ),
            
            MessageItem(
              name: 'Penelope',
              message: 'Hey there! How are you?',
              time: '13:30',
              logoPath: 'assets/6.png',
            ),
            
            MessageItem(
              name: 'Emma',
              message: "Sure, Let's do it",
              time: '13:00',
              logoPath: 'assets/2.png',
            ),
            
            MessageItem(
              name: 'Ava',
              message: 'Ok,see you then',
              time: '11:15',
              logoPath: 'assets/4.png',
            ),
          ],
        ),
      ),
    );
  }
}
