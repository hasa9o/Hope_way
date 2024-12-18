import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hope_way_app/Hope/homeScreens/saveMedia/savedMedia.dart';
import 'package:provider/provider.dart';

import '../animation/storyTopPeople.dart';
import 'interactions/interactions.dart';
import 'interactions/text.dart';

class SuccessStoriesPage extends StatefulWidget {
  const SuccessStoriesPage({super.key});

  @override
  State<SuccessStoriesPage> createState() => _SuccessStoriesPageState();
}

class _SuccessStoriesPageState extends State<SuccessStoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (AppBar(
          title: Text("Stories"),
          backgroundColor: Color(0xff225036),
        )),
        body: FadeInUp(
          duration: Duration(milliseconds: 1700),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      StoryPeoplePage(),
                      Posts(context,
                          "https://i.pinimg.com/736x/04/95/a3/0495a33a5d4e6cd32adebfe9eddb6fac.jpg"),
                      Posts(context,
                          "https://i.pinimg.com/736x/a8/40/f6/a840f655e63ea1f23a9b819777c91b4d.jpg"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

Column Posts(BuildContext context, String LinkPost) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.network(
          LinkPost,
          width: MediaQuery.of(context).size.width + 1.abs() - 20,
          height: 280,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            ChangeNotifierProvider(
                create: (context) => FavoriteNotifier(),
                child: FavoriteButton()),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SavedButton(postLink: LinkPost),
            ),
          ],
        ),
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 2, bottom: 10),
            child: Text("klllklkl"),
          )
        ],
      ),
    ],
  );
}
