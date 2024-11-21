// skills_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.brown.shade700, Colors.brown.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
            children: [
              Text(
                'Skills',
                textAlign: TextAlign.center, // Center text
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              skillItem("Dart Language"),
              skillItem("User-friendly UI Design"),
              skillItem("Attractive UI Development"),
              skillItem("Communication Skills"),
              skillItem("Leadership Skills"),
            ],
          ),
        ),
      ),
    );
  }

  Widget skillItem(String skill) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        "• $skill",
        textAlign: TextAlign.center, // Center text in each skill item
        style: GoogleFonts.poppins(
          fontSize: 18,
          color: Colors.white.withOpacity(0.9),
        ),
      ),
    );
  }
}

