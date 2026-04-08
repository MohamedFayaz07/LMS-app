import 'package:flutter/material.dart';
import 'package:lms_app/screens/reusable_widgets.dart';
import 'course_detail_screen.dart';

class CourseListScreen extends StatelessWidget {
  final List courses = [
    {
      "title": "Flutter Basics",
      "instructor": "Fayaz",
      "description": "Learn the fundamentals of Flutter development.",
      "image": "assets/flutter.png",
    },
    {
      "title": "UI/UX Design",
      "instructor": "Fayaz",
      "description": "Understand design principles and modern UI trends.",
      "image": "assets/uiux.png",
    },
    {
      "title": "Web Development",
      "instructor": "Fayaz",
      "description": "Learn HTML, CSS, JavaScript and build websites.",
      "image": "assets/web.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Courses")),
      body: ListView.builder(
        itemCount: courses.length,
        padding: EdgeInsets.all(12),
        itemBuilder: (context, index) {
          final course = courses[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CourseDetailScreen(
                    title: course["title"],
                    instructor: course["instructor"],
                    description: course["description"],
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                    child: Image.asset(
                      course["image"],
                      width: Responsive.width(context, 0.25),
                      height: Responsive.height(context, 0.1),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Text Content
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course["title"],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            course["instructor"],
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                          SizedBox(height: 4),
                          Text(
                            course["description"],
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Arrow Icon
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}