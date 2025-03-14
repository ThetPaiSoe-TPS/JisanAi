import 'package:flutter/material.dart';
import 'package:flutter_application/sub_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Dark background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon or Logo (Replace with your image or icon)
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFeaf8ff),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.train, // Replace with your desired icon
                    size: 50,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 10), // Spacing between icon and text
                  // Title Text
                  Text(
                    'JISAN AI',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100), // Spacing between title and subtitle
            // Subtitle Text
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      '실시간 도로 시설물 인식 및 유지보수 자동화 시스템 구축 가이드',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 80), // Spacing between subtitle and button
                    // Start Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SubMain()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Green button color
                        padding: EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ), // Rounded corners
                        ),
                      ),
                      child: Text(
                        '시작하기',
                        style: TextStyle(fontSize: 18, color: Colors.lightBlue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
