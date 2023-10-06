import 'package:flutter/material.dart';
import 'package:flutter_login_app_ex01/components/custom_form.dart';
import 'package:flutter_login_app_ex01/components/custom_text_form_field.dart';
import 'package:flutter_login_app_ex01/components/logo.dart';
import 'package:flutter_login_app_ex01/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // 키보드 생성 시 스크롤 O
      body: Padding(
        padding: const EdgeInsets.all(main_gap),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
