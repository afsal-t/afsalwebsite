// large_screen.dart
import 'package:afsalwebsite/afsal%20website/project%20ui.dart';
import 'package:afsalwebsite/afsal%20website/skill%20page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about screen.dart';
import 'contact screen.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        height: double.infinity,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo.shade700, Colors.purple.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  navButton("About", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutPage()));
                  }),
                  navButton("Projects", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectOverviewPage()));
                  }),
                  navButton("Skills", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SkillsPage()));
                  }),
                  navButton("Contact", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactPage()));
                  }),
                ],
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Colors.white70,
              indent: 200,
              endIndent: 200,
            ),
            Container(
              height: 400,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey, I am Afsal",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "FLUTTER",
                        style: GoogleFonts.poppins(
                          color: Colors.yellowAccent,
                          fontSize: 52,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "DEVELOPER",
                        style: GoogleFonts.poppins(
                          color: Colors.yellowAccent,
                          fontSize: 52,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "from India",
                          style: GoogleFonts.poppins(
                            color: Colors.white70,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/29757.jpg"),
                      radius: 150,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget navButton(String text, {required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

