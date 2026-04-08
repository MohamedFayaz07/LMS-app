import 'package:flutter/material.dart';

class LessonScreen extends StatefulWidget {
  final String lessonTitle;

  LessonScreen({required this.lessonTitle});

  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(widget.lessonTitle),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Video Placeholder with smooth animation
            AnimatedOpacity(
              opacity: isCompleted ? 0.6 : 1.0,
              duration: Duration(milliseconds: 400),
              child: AnimatedScale(
                scale: isCompleted ? 0.9 : 1.0,
                duration: Duration(milliseconds: 400),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_circle_fill,
                      size: 80,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Title
            Text(
              widget.lessonTitle,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "This lesson covers the basics related to: ${widget.lessonTitle}. "
                  "Watch the video above and mark as complete once done.",
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),

            SizedBox(height: 30),

            // Completion Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: isCompleted ? Colors.green : Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isCompleted = !isCompleted;
                  });
                },
                child: Text(
                  isCompleted ? "✔ Completed" : "Mark as Complete",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}