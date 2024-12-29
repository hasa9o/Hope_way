import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Hope/Login/splash.dart';
import 'Hope/homeScreens/home.dart';
import 'Hope/homeScreens/interactions/interactions.dart';
import 'Hope/homeScreens/saveMedia/savedMedia.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => FavoriteNotifier()),
    ChangeNotifierProvider(create: (_) => GlobalSaveNotifier()),
  ], child: MyApp()));
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
