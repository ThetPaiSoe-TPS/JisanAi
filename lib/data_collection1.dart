import 'package:flutter/material.dart';

class DataCollectionPage extends StatelessWidget {
  const DataCollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("데이터 수집 단계", style: TextStyle(color: Colors.white)),

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
                "데이터 수집 단계",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 300),

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
                      SizedBox(height: 35),
                      CustomButton(text: "촬영 방식"),
                      SizedBox(height: 45),
                      CustomButton(text: "데이터 전송"),
                      SizedBox(height: 45),
                      CustomButton(text: "영상 데이터 저장"),
                      SizedBox(height: 35),
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

  const CustomButton({super.key, required this.text});

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
