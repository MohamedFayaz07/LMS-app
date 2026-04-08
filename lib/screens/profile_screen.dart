import 'package:flutter/material.dart';
import 'package:lms_app/screens/reusable_widgets.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> completedCourses = [
    "Flutter Basics",
    "UI/UX Design",
    "Web Development",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.red, size: 28),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => LoginScreen()),
                    (route) => false,
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.person, size: 60),
                  ),
                  SizedBox(height: 10),
                  Text("Mohamed Fayaz", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("Student", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text("Completed Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
            SizedBox(height: 10),
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