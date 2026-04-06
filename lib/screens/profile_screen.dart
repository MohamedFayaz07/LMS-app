import 'package:flutter/material.dart';
import 'reusable_widgets.dart';

class ProfileScreen extends StatelessWidget {
  final List completedCourses = [
    "Flutter Basics",
    "UI/UX Design",
    "Web Development",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 60),
              ),
            ),
            SizedBox(height: 15),
            Center(child: Text("Mohamed Fayaz", style: TextStyle(fontSize: 18))),
            Center(child: Text("Student")),
            SizedBox(height: 20),

            SectionHeader("Completed Courses"),
            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: completedCourses.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text(completedCourses[index]),
                    ),
                  );
                },
              ),
            ),

            AppButton(
              text: "Edit Profile",
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Profile Update available soon")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}