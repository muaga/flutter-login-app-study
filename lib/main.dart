import 'package:flutter/material.dart';
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
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
