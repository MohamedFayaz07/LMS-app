import 'package:flutter/material.dart';
import 'lesson_screen.dart';

class CourseDetailScreen extends StatelessWidget {
  final String title;
  final String instructor;
  final String description;

  CourseDetailScreen({
    required this.title,
    required this.instructor,
    required this.description,
  });

  final List lessons = [
    "Introduction",
    "Widgets in Flutter",
    "Layouts",
    "State Management Basics",
    "Project Summary",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description, style: TextStyle(fontSize: 15)),
            SizedBox(height: 12),
            Text("Instructor: $instructor",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("Lessons", style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            )),
            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: lessons.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(lessons[index]),
                      trailing: Icon(Icons.play_arrow),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => LessonScreen(
                              lessonTitle: lessons[index],
                            ),
                          ),
                        );
                      },
                    ),
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