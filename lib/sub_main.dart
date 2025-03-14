import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_application/selection.dart';
import 'package:flutter_application/system.dart';
import 'package:flutter_application/system_overview.dart';
import 'package:flutter_application/tech_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SubMain());
  }
}

class SubMain extends StatelessWidget {
  // List of texts for each box
  final List<String> boxTexts = [
    "시스템 개요 및 전체 구조",
    "기술 스택 선정",
    "시스템 상세 설계",
    "최종 작업 단계",
    "결론 및 기대 효과",
    "추가 질문",
  ];

  // List of pages for navigation
  final List<Widget> pages = [
    SystemOverview(),
    Selection(),
    System(),
    Page4(),
    Page5(),
    TechStackPage(),
  ];

  SubMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("App Name Here", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 40),
          onPressed: () {
            // Add your navigation logic here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          // GridView for the boxes
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 50,
                bottom: 10,
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 columns
                  crossAxisSpacing: 30, // Horizontal gap
                  mainAxisSpacing: 30, // Vertical gap
                  childAspectRatio: 1, // Width-to-height ratio of boxes
                ),
                itemCount: boxTexts.length, // Total 6 boxes
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (index != 3 && index != 4) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    pages[index], // Navigate to the corresponding page
                          ),
                        );
                      }
                      // Navigate to the corresponding page based on the index
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: Text(
                          boxTexts[index], // Dynamic text for each box
                          style: TextStyle(color: Colors.white, fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // Footer with Text and Top Padding
          Container(
            padding: EdgeInsets.all(50), // Top padding for the footer
            width: double.infinity,
            child: Center(
              child: Text(
                "실시간 도로 시설물 인식 및 유지보수 자동화 시스템 구축 가이드",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 4")),
      body: Center(child: Text("This is Page 4")),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 5")),
      body: Center(child: Text("")),
    );
  }
}
