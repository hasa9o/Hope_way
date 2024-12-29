import 'package:hope_way_app/Hope/style_fonts_colors/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:hope_way_app/Hope/style_fonts_colors/buttonStyles.dart';

import '../homeScreens/bottomNavigation.dart';

class ValenteerProcess extends StatefulWidget {
  const ValenteerProcess({super.key});

  @override
  State<ValenteerProcess> createState() => _ValenteerProcessState();
}

class _ValenteerProcessState extends State<ValenteerProcess> {
  Map<String, bool> options = {
    "08-12  Am": false,
    "12-04  Pm": false,
    "04-08  Pm": false,
    "08-12  Pm": false,
    "12-08  Am": false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff225036),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("Assets/images/valenteer_bg_image.jpg"))),
        child: FadeInUp(
          duration: const Duration(milliseconds: 1500),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const Center(
                  child: Text(
                    "Submit For Help",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(children: [
                  makeInput(label: "Your Name"),
                  makeInput(label: "Phone Number"),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                      "Choose the suitable time to give your support",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 150,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ListView(
                          children: options.keys.map((String key) {
                            return CheckboxListTile(
                              title: Text(
                                key,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              value: options[key],
                              onChanged: (bool? value) {
                                setState(() {
                                  options[key] = value ?? false;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      color: Colors.green, width: 5)),
                              activeColor: Colors.green[700],
                            );
                          }).toList(),
                        ),
                        const Positioned(
                            bottom: 0,
                            child: Icon(
                              Icons.expand_more_sharp,
                              size: 50,
                              color: Colors.black26,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: CustomButtonStyle.elevatedButtonStyle(),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigationScreens()));
                    },
                    child: const Text(
                      "Submit",
                      style: AppTextStyles.button,
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column makeInput({label}) {
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
