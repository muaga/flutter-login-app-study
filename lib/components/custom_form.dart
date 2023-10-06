import 'package:flutter/material.dart';
import 'package:flutter_login_app_ex01/components/custom_text_form_field.dart';
import 'package:flutter_login_app_ex01/size.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        CustomTextFormField(text: "Email"),
        SizedBox(height: large_gap),
        CustomTextFormField(text: "Password", isPassword: true),
        // 데이터가 들어오면, true가 된다.
      ]),
    );
  }
}
