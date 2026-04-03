import 'package:flutter/material.dart';

class LessonScreen extends StatelessWidget {
  final String lessonTitle;

  LessonScreen({required this.lessonTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lessonTitle)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[300],
              child: Icon(Icons.play_circle_fill, size: 80),
            ),
            SizedBox(height: 20),
            Text(
              lessonTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text("Mark as Complete"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}