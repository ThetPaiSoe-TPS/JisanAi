import 'package:flutter/material.dart';
import 'package:flutter_application/sub_main.dart';

void main() {
  runApp(SystemOverview());
}

class SystemOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SystemOverviewPage());
  }
}

class SystemOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background color
      appBar: AppBar(
        title: Text('시스템 개요 및 전체 구조'), // Header
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Back arrow icon
          onPressed: () {
            // Navigate back to the previous page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SubMain()),
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(3), // Padding around the content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First section (takes half of the space)
            Expanded(
              flex: 1, // Takes half of the available space
              child: Center(
                child: Text(
                  '데이터 수집 및 실시간 처리',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Remaining sections (5 cards)
            Expanded(
              flex: 1, // Takes the other half of the available space
              child: Column(
                children: [
                  _buildCard('도로 시설물 실시간 촬영'),
                  _buildCard('서버 저장 및 데이터 전처리'),
                  _buildCard('AI 분석 및 문제점 감지'),
                  _buildCard('AS 상황실 전달 및 유지보수 일정 결정'),
                  _buildCard('어플리케이션 기반 UI/UX 구현'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build a card
  Widget _buildCard(String title) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 1), // Spacing between cards
      child: Padding(
        padding: EdgeInsets.all(3), // Padding inside the card
        child: Text(title, style: TextStyle(fontSize: 12, color: Colors.black)),
      ),
    );
  }
}
