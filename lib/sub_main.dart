import 'package:flutter/material.dart';
import 'package:flutter_application/selection.dart';
import 'system_overview.dart';
import 'selection.dart';

void main() {
  runApp(SubMain());
}

class SubMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  // List of pages for navigation
  final List<Widget> pages = [
    SystemOverview(),
    Selection(),
    ThirdPage(),
    FourthPage(),
    FifthPage(),
    SixthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"), // Header
        backgroundColor: Colors.blueGrey,
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
                          'Box ${index + 1}', // Dynamic text for each box
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
          Padding(padding: EdgeInsets.only(bottom: 10), child: Text('Flutter')),
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
