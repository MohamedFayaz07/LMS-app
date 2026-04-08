import 'package:flutter/material.dart';
import 'reusable_widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Fayaz 👋", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SectionHeader("Your Progress"),
            SizedBox(height: 20),

            // Using reusable StatCard
            Row(
              children: [
                StatCard(number: "8", label: "Courses", color: Colors.blue),
                SizedBox(width: 16),
                StatCard(number: "4", label: "Completed", color: Colors.green),
              ],
            ),

            SizedBox(height: 30),
            SectionHeader("Continue Learning"),
            SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: [
                  _courseTile("Flutter Basics", 0.4),
                  _courseTile("UI/UX Design", 0.2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _courseTile(String title, double progress) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.play_circle_filled, color: Colors.blue),
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${(progress * 100).toInt()}% completed"),
            LinearProgressIndicator(value: progress),
          ],
        ),
      ),
    );
  }
}