import 'package:flutter/material.dart';

class ProflieScreen extends StatefulWidget {
  const ProflieScreen({super.key});

  @override
  State<ProflieScreen> createState() => _ProflieScreenState();
}

class _ProflieScreenState extends State<ProflieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                            fit: BoxFit.fitHeight,
                            "https://i.pinimg.com/736x/87/20/a2/8720a22734b1539226e31897bb51b802.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "Hasan Safaa",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
