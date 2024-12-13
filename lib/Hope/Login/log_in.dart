import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:hope_way_app/Hope/style_fonts_colors/buttonStyles.dart';

import '../../Hope/style_fonts_colors/textStyle.dart';
import '../registrationScreens/askme.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff225036),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff225036)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeInUp(
                      duration: const Duration(milliseconds: 1000),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  FadeInDown(
                      duration: const Duration(milliseconds: 1300),
                      child: const Text(
                        "Welcome Back",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("Assets/images/green.jpg")),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 45,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1400),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.greenAccent.shade100,
                                        blurRadius: 20,
                                        offset: const Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "Email or Phone number",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: const TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1500),
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: AppTextStyles.subTitles,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Container(
                            padding: const EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const UserOrValnteer()));
                              },
                              style: CustomButtonStyle.elevatedButtonStyle(),
                              child: const Text(
                                "Log In",
                                style: AppTextStyles.button,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1700),
                            child: const Text(
                              "Or LogIn With",
                              style: AppTextStyles.subTitles,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: FadeInUp(
                                  duration: const Duration(milliseconds: 1800),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 50,
                                    color: Colors.black38,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Facebook",
                                        style: AppTextStyles.button,
                                      ),
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: FadeInUp(
                                  duration: const Duration(milliseconds: 1900),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 50,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    color: Colors.black38,
                                    child: const Center(
                                      child: Text(
                                        "Gmail",
                                        style: AppTextStyles.button,
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
