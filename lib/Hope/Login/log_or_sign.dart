import 'package:hope_way_app/Hope/style_fonts_colors/buttonStyles.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import 'log_in.dart';
import 'signUp.dart';

class LogOrSign extends StatefulWidget {
  const LogOrSign({super.key});

  @override
  State<LogOrSign> createState() => _LogOrSignState();
}

class _LogOrSignState extends State<LogOrSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("Assets/images/rose.jpg"))),
        child: FadeInUp(
          delay: const Duration(microseconds: 3000),
          child: Stack(
            children: [
              Positioned(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.height * 0.2,
                  child: RichText(
                    text: const TextSpan(
                      text: null,
                      style: TextStyle(fontSize: 60),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Hello,\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff8aa893))),
                        TextSpan(
                            text: 'Honey',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff225036))),
                      ],
                    ),
                  )),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width * 0.12,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LogIn(),
                          ),
                        );
                      },
                      style: CustomButtonStyle.elevatedButtonStyle(),
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white, // Text color
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        );
                      },
                      style: CustomButtonStyle.elevatedButtonStyle(),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white, // Text color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
