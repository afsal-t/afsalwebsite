import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8B6E6B), // Adjust this color to match your background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "I am Afsal, a Flutter developer with 6 months of experience. "
                    "I completed an internship at Luminar Technolab in Calicut, where I gained valuable practical experience in Flutter development. "
                    "I hold a BA degree and have a strong passion for mobile application development, aiming to bring innovative solutions to life.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.white54),
              SizedBox(height: 10),
              
              SizedBox(height: 10),

            ],
          ),
        ),
      ),
    );
  }
}
