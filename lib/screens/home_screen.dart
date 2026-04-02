import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Fayaz 👋",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),

            SizedBox(height: 10),
            Text("Your Progress", style: TextStyle(fontSize: 18)),

            SizedBox(height: 20),

            // Progress Cards
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text("8", style: TextStyle(fontSize: 32)),
                        Text("Courses"),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text("4", style: TextStyle(fontSize: 32)),
                        Text("Completed"),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            Text("Continue Learning",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text("Flutter Basics"),
                    subtitle: Text("40% completed"),
                  ),
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text("UI/UX Design"),
                    subtitle: Text("20% completed"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}