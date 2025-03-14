import 'package:flutter/material.dart';
import 'package:flutter_application/sub_main.dart';

void main() {
  runApp(SystemOverview());
}

class SystemOverview extends StatelessWidget {
  const SystemOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SystemOverviewPage());
  }
}

class SystemOverviewPage extends StatelessWidget {
  const SystemOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SubMain()),
            );
          },
        ),
        title: Text(
          "시스템 상세 설계", // Korean Title
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Top Blue Section with Image
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "데이터 수집 및 실시간 처리",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 9, 109, 192),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Bottom White Section with Rounded Corners
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildOptionButton("도로 시설물 실시간 촬영", onPressed: () {}),
                    buildOptionButton("서버 저장 및 데이터 전처리"),
                    buildOptionButton("AI 분석 및 문제점 감지", onPressed: () {}),
                    buildOptionButton("AS 상황실 전달 및 유지보수 일정 결정"),
                    buildOptionButton("어플리케이션 기반 UI/UX 구현"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for Bordered Buttons
  Widget buildOptionButton(String text, {VoidCallback? onPressed}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: .1),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: const Color.fromARGB(255, 9, 109, 192),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
