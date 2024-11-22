import 'package:flutter/material.dart';

class ProjectOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo.shade700, Colors.purple.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false, // Removes the back arrow
                backgroundColor: Colors.indigo.shade700,
                title: Text(
                  "My Flutter Projects",
                  style: TextStyle(color: Colors.white),
                ),
                centerTitle: true,
                elevation: 0, // Removes AppBar shadow
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        "Flutter Project Showcase",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Explore my creative projects that solve real-world problems. "
                            "Each app is designed to provide value with an intuitive user interface.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(height: 20),

                      // BMI Calculator Section
                      projectSection(
                        context,
                        title: "BMI Calculator App",
                        description:
                        "A simple app for users to calculate and monitor their Body Mass Index (BMI). "
                            "It provides health advice based on BMI results.",
                        icon: Icons.monitor_weight,
                      ),
                      SizedBox(height: 20),

                      // Travel App Section
                      projectSection(
                        context,
                        title: "Travel App",
                        description:
                        "A travel app showcasing Indian destinations and travel packages. "
                            "It helps users plan their trips efficiently with essential details.",
                        icon: Icons.travel_explore,
                      ),
                      SizedBox(height: 20),

                      // Personal Money Management Section
                      projectSection(
                        context,
                        title: "Personal Money Management App",
                        description:
                        "Helps users track income, expenses, and savings. "
                            "Provides visual reports for better financial decision-making.",
                        icon: Icons.account_balance_wallet,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget projectSection(BuildContext context,
      {required String title, required String description, required IconData icon}) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 36,
            color: Colors.white,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.9),
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
