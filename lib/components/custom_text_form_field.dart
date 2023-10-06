import 'package:flutter/material.dart';
import 'package:flutter_login_app_ex01/size.dart';

class CustomTextFormField extends StatelessWidget {
  var text;
  var isPassword;

  CustomTextFormField({this.text, this.isPassword = false});
  // isPassword의 디폴트 값을 false로 준다. 연산을 위해 {}로 감싸야 한다.

  @override
  Widget build(BuildContext context) {
    print("isPassword : ${isPassword}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${text}"),
        SizedBox(height: small_gap),
        TextFormField(
          // 글 입력 칸과 키보드 생성
          obscureText: isPassword, // true면 글자를 가린다.
          decoration: InputDecoration(
            hintText: "Enter ${text}", // placeholder
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
