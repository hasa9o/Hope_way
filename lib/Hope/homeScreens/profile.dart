import 'package:flutter/material.dart';
import '../style_fonts_colors/textStyle.dart';
import 'addPhoto.dart';
import 'minorScreens/threeLines.dart';

class ProflieScreen extends StatefulWidget {
  const ProflieScreen({super.key});

  @override
  State<ProflieScreen> createState() => _ProflieScreenState();
}

class _ProflieScreenState extends State<ProflieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff225036),
        title: Text(
          "Profile",
          style: AppTextStyles.button,
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThreeLines(
                              title: 'Information',
                            )),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
                child: MyHomePage(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Hasan Safaa",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 3,

                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(100, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: ClipRRect(
                        child: Image(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i.pinimg.com/736x/57/8c/eb/578ceb6ebe81f1841c76b89b323c5770.jpg")),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
