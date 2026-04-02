import 'package:flutter/material.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
  int currentIndex = 0;

  List<String> titles = [
    "Learn Anywhere",
    "Track Progress",
    "Achieve Goals",
  ];

  List<String> subtitles = [
    "Access all your courses anytime.",
    "Monitor your learning activities.",
    "Complete lessons and grow.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: 3,
              onPageChanged: (i) {
                setState(() {
                  currentIndex = i;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school, size: 120, color: Colors.blue),
                      SizedBox(height: 30),
                      Text(
                        titles[index],
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        subtitles[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Dots Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
                  (i) => Container(
                margin: EdgeInsets.all(4),
                width: currentIndex == i ? 16 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currentIndex == i ? Colors.blue : Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          // Next / Start Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
              onPressed: () {
                if (currentIndex == 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => LoginScreen()),
                  );
                } else {
                  controller.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(currentIndex == 2 ? "Start" : "Next"),
            ),
          ),

          SizedBox(height: 30),
        ],
      ),
    );
  }
}