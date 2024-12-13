import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'log_or_sign.dart';
import 'package:animate_do/animate_do.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) =>  LogOrSign(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("Assets/images/rose.jpg")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInUp(
              child: const Text(
                "Welcome!",
                style: TextStyle(
                    color: Color(0xff225036),
                    fontSize: 34,
                    fontWeight: FontWeight.w400,
                    fontFamily: AutofillHints.creditCardExpirationDay),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FadeInUp(
                child: LoadingFadingLine.circle(
              backgroundColor: const Color(0xff225036),
            )),
            const SizedBox(
              height: 10,
            ),
            LoadingFadingLine.circle(
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
