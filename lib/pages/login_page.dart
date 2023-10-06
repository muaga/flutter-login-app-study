import 'package:flutter/material.dart';
import 'package:flutter_login_app_ex01/components/custom_text_form_field.dart';
import 'package:flutter_login_app_ex01/components/logo.dart';
import 'package:flutter_login_app_ex01/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(main_gap),
        child: ListView(
          children: [
            Logo("Login"),
            Form(
              child: Column(children: [
                CustomTextFormField(text: "Email"),
                CustomTextFormField(
                    text: "Password", isPassword: true), // 데이터가 들어오면, true가 된다.
              ]),
            )
          ],
        ),
      ),
    );
  }
}
