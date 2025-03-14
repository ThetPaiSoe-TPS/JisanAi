import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TechStackPage(),
    );
  }
}

class TechStackPage extends StatefulWidget {
  const TechStackPage({super.key});

  @override
  _TechStackPageState createState() => _TechStackPageState();
}

class _TechStackPageState extends State<TechStackPage> {
  String answer = "Ans : Here !";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0170C0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF0170C0), size: 40),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "기술 스택 선정",
          style: TextStyle(
            color: Color(0xFF0170C0),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Question Mark Circle
          Container(
            width: double.infinity,
            color: Color(0xFF0170C0),
            padding: EdgeInsets.symmetric(vertical: 120),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.question_mark,
                    size: 60,
                    color: Color(0xFF0170C0),
                  ),
                ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the body
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), // Top-left border radius
                  topRight: Radius.circular(20), // Top-right border radius
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    buildOptionBox("데이터 수집 및 실시간 처리"),
                    SizedBox(height: 30),
                    buildOptionBox("AI 분석 및 모델 학습"),
                    SizedBox(height: 30),
                    buildOptionBox("서버 및 데이터 처리"),

                    // Answer Box
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF0170C0), width: 2),
                      ),
                      child: Text(
                        answer,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF0170C0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to build each option box
  Widget buildOptionBox(String text) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF0170C0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.question_mark,
                  color: Color(0xFF0170C0),
                  size: 18,
                ),
              ),
              SizedBox(width: 10),
              Text(text, style: TextStyle(fontSize: 16, color: Colors.white)),
            ],
          ),
          GestureDetector(
            onTap: () {
              // Close button action
            },
            child: Icon(Icons.close, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
