import 'package:flutter/material.dart';

ThemeData Button() {
  return ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // ElevateButton - 디폴트 값 파란색
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: Size(double.infinity, 60),
        // Size의 width를 double.infinity로 지정하면,
        // 앱의 가로모드 등 화면에 크기에 맞는 버튼이 자동 지정된다.
      ),
    ),
  );
}
