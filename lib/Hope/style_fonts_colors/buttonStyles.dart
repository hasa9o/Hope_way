import 'package:flutter/material.dart';

class CustomButtonStyle {
  static ButtonStyle elevatedButtonStyle() {
    return ElevatedButton.styleFrom(
        minimumSize: Size(300, 60),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Color(0xB38aa893));
  }
}
