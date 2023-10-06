import 'package:flutter/material.dart';
import 'package:flutter_login_app_ex01/components/logo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Logo("Login"),
    );
  }
}
