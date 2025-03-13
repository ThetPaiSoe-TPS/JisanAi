import 'package:flutter/material.dart';

void main() {
  runApp(SubMain());
}

class SubMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Grid Layout"), // Header
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    // First Row with 2 boxes
                    Expanded(
                      child: Row(
                        children: [
                          _buildBox(
                            context,
                            boxTexts[0],
                            NextPage(title: boxTexts[0]),
                          ),
                          SizedBox(width: 10),
                          _buildBox(
                            context,
                            boxTexts[1],
                            NextPage(title: boxTexts[1]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    // Second Row with 2 boxes
                    Expanded(
                      child: Row(
                        children: [
                          _buildBox(
                            context,
                            boxTexts[2],
                            NextPage(title: boxTexts[2]),
                          ),
                          SizedBox(width: 10),
                          _buildBox(
                            context,
                            boxTexts[3],
                            NextPage(title: boxTexts[3]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    // Third Row with 2 boxes
                    Expanded(
                      child: Row(
                        children: [
                          _buildBox(
                            context,
                            boxTexts[4],
                            NextPage(title: boxTexts[4]),
                          ),
                          SizedBox(width: 10),
                          _buildBox(
                            context,
                            boxTexts[5],
                            NextPage(title: boxTexts[5]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(3),
              width: double.infinity,
              child: Center(
                child: Text(
                  "실시간 도로 시설물 인식 및 유지보수 자동화 시스템 구축 가이드", // Footer text
                  style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build a box with navigation
  Widget _buildBox(BuildContext context, String text, Widget nextPage) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            // Navigate to the next page
            context as BuildContext,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.lightBlue, // Box background color
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text, // Different text for each box
              style: TextStyle(
                color: Colors.white, // White text
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
              maxLines: 3, // Limits text to 3 lines
              overflow: TextOverflow.ellipsis, // Adds "..."
            ),
          ),
        ),
      ),
    );
  }
}

// List of different texts for each box
List<String> boxTexts = [
  "시스템 개요 및 전체 구조",
  "기술 스택 선정",
  "시스템 상세 설계",
  "최종 작업 단계",
  "결론 및 기대 효과",
  "추가 질문",
];

// Next Page to navigate to
class NextPage extends StatelessWidget {
  final String title;

  NextPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text("This is the $title page", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
