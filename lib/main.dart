import 'package:flutter/material.dart';
import 'package:flutter_login_app_ex01/button.dart';
import 'package:flutter_login_app_ex01/pages/home_page.dart';
import 'package:flutter_login_app_ex01/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Button(),
      initialRoute: "/login", // 앱의 첫 페이지
      routes: {
        // 페이지가 2개 이상일 때, ""이름을 지정해주고, 아래의 이름에 따라 이동한다.
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
