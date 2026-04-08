import 'package:flutter/material.dart';
import 'reusable_widgets.dart';

class AssignmentScreen extends StatelessWidget {
  final List assignments = [
    {"title": "UI Basics Assignment", "status": "Pending"},
    {"title": "Flutter Layouts Task", "status": "Submitted"},
    {"title": "Firebase Setup Work", "status": "Pending"},
  ];

  @override
  Widget build(BuildContext context) {
    int pending = assignments.where((a) => a["status"] == "Pending").length;
    int submitted = assignments.where((a) => a["status"] == "Submitted").length;

    return Scaffold(
      appBar: AppBar(title: Text("Assignments")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Using same StatCard widget
            Row(
              children: [
                StatCard(number: "$pending", label: "Pending", color: Colors.orange),
                SizedBox(width: 16),
                StatCard(number: "$submitted", label: "Submitted", color: Colors.green),
              ],
            ),
            SizedBox(height: 20),

            SectionHeader("Your Assignments"),
            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: assignments.length,
                itemBuilder: (context, index) {
                  return AssignmentCard(
                    title: assignments[index]["title"],
                    status: assignments[index]["status"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}