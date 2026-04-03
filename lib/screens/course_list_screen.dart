import 'package:flutter/material.dart';
import 'course_detail_screen.dart';

class CourseListScreen extends StatelessWidget {
  final List courses = [
    {
      "title": "Flutter Basics",
      "instructor": "Fayaz1",
      "description": "Learn the fundamentals of Flutter development.",
    },
    {
      "title": "UI/UX Design",
      "instructor": "Fayaz2",
      "description": "Understand design principles and modern UI trends.",
    },
    {
      "title": "Web Development",
      "instructor": "Fayaz3",
      "description": "Learn HTML, CSS, JavaScript and build websites.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Courses")),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return CourseCard(
            title: courses[index]["title"],
            instructor: courses[index]["instructor"],
            description: courses[index]["description"],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CourseDetailScreen(
                    title: courses[index]["title"],
                    instructor: courses[index]["instructor"],
                    description: courses[index]["description"],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String instructor;
  final String description;
  final VoidCallback onTap;

  CourseCard({
    required this.title,
    required this.instructor,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(Icons.book, size: 40),
        title: Text(title),
        subtitle: Text(instructor),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}