import 'package:flutter/material.dart';
import 'package:flutter_application/selection.dart';
import 'package:flutter_application/system.dart';
import 'package:flutter_application/tech_stack.dart';
import 'system_overview.dart';
import 'selection.dart';
import 'system.dart';
import 'main.dart';

void main() {
  runApp(SubMain());
}

class SubMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SubHomePage());
  }
}

class SubHomePage extends StatelessWidget {
  // List of pages for navigation
  final List<Widget> pages = [
    SystemOverview(),
    Selection(),
    System(),
    FourthPage(),
    FifthPage(),
    TechStackPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Name Here"), // Header
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.lightBlue),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex:
                2, // This ensures the grid takes up most of the available space
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 columns
                  crossAxisSpacing: 30, // Horizontal gap
                  mainAxisSpacing: 20, // Vertical gap
                  childAspectRatio: 1.6, // Adjusts width-to-height ratio
                ),
                itemCount: 6, // Total 6 boxes
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the corresponding page based on the index
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  pages[index], // Navigate to the corresponding page
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '시스템 개요 및 전체 구조', // Dynamic text for each box
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text('실시간 도로 시설물 인식 및 유지보수 자동화 시스템 구축 가이드'),
          ),
        ],
      ),
    );
  }
}

// Define different pages for navigation
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: Center(child: Text("Welcome to the First Page!")),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(child: Text("Welcome to the Second Page!")),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Page")),
      body: Center(child: Text("Welcome to the Third Page!")),
    );
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fourth Page")),
      body: Center(child: Text("Welcome to the Fourth Page!")),
    );
  }
}

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fifth Page")),
      body: Center(child: Text("Welcome to the Fifth Page!")),
    );
  }
}

class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sixth Page")),
      body: Center(child: Text("Welcome to the Sixth Page!")),
    );
  }
}
