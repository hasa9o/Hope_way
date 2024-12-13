import 'package:flutter/material.dart';
import 'Hope/Login/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenSplash(),
      // TestOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}
