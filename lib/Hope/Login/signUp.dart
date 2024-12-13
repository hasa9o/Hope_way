import 'package:animate_do/animate_do.dart';
import 'package:hope_way_app/Hope/style_fonts_colors/textStyle.dart';
import 'package:flutter/material.dart';

import 'log_in.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isObscured = true;
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
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("Assets/images/teal.jpg"))),
        padding: const EdgeInsets.only(left: 40, right: 40, top: 5, bottom: 5),
        width: double.infinity,
        child: Flexible(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeInUp(
                      duration: const Duration(milliseconds: 1000),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      child: const Text(
                        "Create an account, It's free",
                        style: AppTextStyles.subTitles,
                      )),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      child: makeInput(
                        label: "First Name",
                      )),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      child: makeInput(label: "Last Name")),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1200),
                      child: makeInput(label: "Email Or Phone Number")),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1300),
                      child: makeInput(label: "Password", obscureText: false)),
                  FadeInUp(
                      duration: const Duration(milliseconds: 1400),
                      child: makeInput(
                        label: "Confirm Password",
                        obscureText: true,
                      )),
                  // makeInput(
                  //     label: "Confirm Password", obscureText: true)
                ],
              ),
              FadeInUp(
                  duration: const Duration(milliseconds: 1500),
                  child: Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {},
                      color: const Color(0xB38aa893),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: const Text(
                        "Sign Up",
                        style: AppTextStyles.button,
                      ),
                    ),
                  )),
              FadeInUp(
                  duration: const Duration(milliseconds: 1600),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Already have an account?",
                        style: AppTextStyles.subTitles,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LogIn()));
                        },
                        child: const Text(
                          " Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black87),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Column makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: _isObscured,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
