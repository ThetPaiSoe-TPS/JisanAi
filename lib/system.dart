import 'package:flutter/material.dart';
import 'package:flutter_application/data_collection1.dart';
import 'sub_main.dart';
import 'data_collection2.dart';

void main() {
  runApp(System());
}

class System extends StatelessWidget {
  const System({super.key});

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
                Image.asset(
                  "assets/images/bus.jpg", // Change to your correct asset path
                  height: 200,
                ),
              ],
            ),
          ),

          // Bottom White Section with Rounded Corners
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
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
                    buildOptionButton(
                      "데이터 수집 단계",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DataCollectionPage(),
                          ),
                        );
                      },
                    ),
                    buildOptionButton("AI 분석 및 문제 감지"),
                    buildOptionButton(
                      "유지보수 알림 및 일정 관리",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaintenancePage(),
                          ),
                        );
                      },
                    ),
                    buildOptionButton("모바일 및 웹 어플리케이션 개발"),
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
      margin: EdgeInsets.only(bottom: 30),
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
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
