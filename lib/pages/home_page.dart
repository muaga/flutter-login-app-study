import 'package:flutter/material.dart';
import 'package:flutter_login_app_ex01/components/logo.dart';
import 'package:flutter_login_app_ex01/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(main_gap),
        child: Column(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Care Soft"),
            SizedBox(height: large_gap),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // 뒤로가기
                },
                child: Text("Get Started")),
          ],
        ),
      ),
    );
  }
}
