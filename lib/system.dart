import 'package:flutter/material.dart';
import 'package:flutter_application/data_collection1.dart';
import 'sub_main.dart';
import 'data_collection2.dart';

void main() {
  runApp(System());
}

class System extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReferenceScreen(),
    );
  }
}

class ReferenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of the top half
      body: SafeArea(
        child: Column(
          children: [
            // Header with Back Icon and Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                color: Colors.lightBlue,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SubMain()),
                        );
                      },
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),

                        child: Text(
                          "시스템 상세 설계",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 48), // Balancing spacing
                  ],
                ),
              ),
            ),

            // Image
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                "assets/images/bus.jpg", // Change to your correct asset path
                height: 100,
              ),
            ),

            // White Rounded Bottom Section
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        text: "데이터 수집 단계",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DataCollectionPage(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      CustomButton(
                        text: "AI 분석 및 문제 감지",
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => AIAnalysisPage(),
                          //   ),
                          // );
                        },
                      ),
                      SizedBox(height: 15),
                      CustomButton(
                        text: "유지보수 알림 및 일정 관리",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MaintenancePage(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      CustomButton(
                        text: "모바일 및 웹 어플리케이션 개발",
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => MobileWebAppPage(),
                          //   ),
                          // );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Button Widget
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// PAGE 2: AI Analysis Page
class AIAnalysisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AI 분석 및 문제 감지"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("AI Analysis Page", style: TextStyle(fontSize: 22)),
      ),
    );
  }
}

// PAGE 3: Maintenance Page
// class MaintenancePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("유지보수 알림 및 일정 관리"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: Text("Maintenance Page", style: TextStyle(fontSize: 22)),
//       ),
//     );
//   }
// }

// PAGE 4: Mobile Web App Page
class MobileWebAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("모바일 및 웹 어플리케이션 개발"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Mobile & Web App Development Page",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
