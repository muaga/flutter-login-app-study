import 'package:flutter/material.dart';
import 'package:flutter_login_app_ex01/components/custom_text_form_field.dart';
import 'package:flutter_login_app_ex01/size.dart';
import 'package:flutter_login_app_ex01/user_repository.dart';
import 'package:flutter_login_app_ex01/validator_util.dart';

class CustomForm extends StatelessWidget {
  // 1. 글로벌 key 만들기
  final _formkey = GlobalKey<FormState>();

  // 2. validate()에 접근할 Controller와 잇는 TextEditingController 변수 만들기
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      // 3. 유효성 검사 준비
      key: _formkey,
      child: Column(children: [
        // 5. validator에 전달할 데이터를 매개변수로 넣기(validator_util을 통해)
        CustomTextFormField(
            text: "Email", validate: validateEmail(), textController: _email),
        SizedBox(height: large_gap),
        CustomTextFormField(
            text: "Password",
            isPassword: true,
            validate: validatePassword(),
            textController: _password),
        SizedBox(height: large_gap),
        ElevatedButton(
            onPressed: () {
              // 7. 버튼 클릭 시 현재 입력된 값(상태)로 validate를 진행한 후,
              // return 값이 null(=오류X)이면 {} 안의 내용이 실행
              if (_formkey.currentState!.validate()) {
                // 9. login repository 실행
                UserRepository repo = UserRepository();
                repo.login(_email.text.trim(), _password.text.trim());
                // 10. 유효성 검사가 끝난 _email, _password의 text만 가져온다.
                // * .trim()을 통해 입력되는 공백값을 제거해서 전달
                Navigator.pushNamed(context, "/home"); // "/home" 페이지로 이동
              }
            },
            child: Text("Login")),
        // 버튼을 만드는 것만으로도 ButtonTheme의 Button이 생성된다.

        // 데이터가 들어오면, true가 된다.
      ]),
    );
  }
}
