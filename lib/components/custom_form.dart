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
        SizedBox(height: large_gap),
        ElevatedButton(onPressed: () {}, child: Text("Login")),
        // 버튼을 만드는 것만으로도 ButtonTheme의 Button이 생성된다.

        // 데이터가 들어오면, true가 된다.
      ]),
    );
  }
}
