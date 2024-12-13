import 'package:hope_way_app/Hope/registrationScreens/valenteer.dart';
import 'package:hope_way_app/Hope/style_fonts_colors/buttonStyles.dart';
import 'package:hope_way_app/Hope/style_fonts_colors/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class UserOrValnteer extends StatefulWidget {
  const UserOrValnteer({super.key});

  @override
  State<UserOrValnteer> createState() => _UserOrValnteerState();
}

class _UserOrValnteerState extends State<UserOrValnteer> {
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
              fit: BoxFit.cover, image: AssetImage("Assets/images/leaves.jpg")),
        ),
        child: FadeInUp(
          duration: const Duration(milliseconds: 1700),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Are You Valenteer or Shining Star?",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Alerting();
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 60),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xB38aa893),
                  ),
                  child: Text(
                    "Valenteer",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
              const SizedBox(
                height: 30,
                child: Center(
                  child: Text(
                    "OR",
                    style: AppTextStyles.subTitles,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Alerting();
                      });
                },
                style: CustomButtonStyle.elevatedButtonStyle(),
                child: Text(
                  "Shining Star",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////
class Alerting extends StatefulWidget {
  const Alerting({super.key});

  @override
  State<Alerting> createState() => _AlertingState();
}

class _AlertingState extends State<Alerting> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Confirmation"),
      content: const Text("Are You Sure?"),
      actions: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xB38aa893),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: const Text("cancel")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ValenteerProcess()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xB38aa893),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: const Text("ok"))
          ],
        ),
      ],
    );
  }
}
