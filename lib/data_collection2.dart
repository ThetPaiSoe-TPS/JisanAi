import 'package:flutter/material.dart';

class MaintenancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("유지보수 알림 및 일정 관리", style: TextStyle(color: Colors.white)),

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/highway.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(color: Colors.blue.withOpacity(0.7)),
                  ),
                ),
                // Background Image
                // Image.asset(
                //   "assets/images/highway.jpg", // Replace with your image path
                //   fit: BoxFit.cover,
                // ),
                // // Blue Blur Overlay
                // Container(
                //   color: Colors.blue.withOpacity(
                //     0.4,
                //   ), // Blue color with 40% opacity
                // ),
              ],
            ),
          ),

          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Page Title
              Text(
                "유지보수 알림 및 일정 관리",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              // White Card with Buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      CustomButton(text: "AI 분석 결과를 서버에 저장"),
                      SizedBox(height: 45),
                      CustomButton(text: "AS 상황실 대시보드 제공"),
                      SizedBox(height: 45),
                      CustomButton(text: "유지보수 일정 결정"),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Custom Button Widget
class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
