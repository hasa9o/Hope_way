import 'package:flutter/material.dart';

import '../animation/homeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff225036),
          title: Text("Home"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                child: AutoHomeAnimation(),
              ),
              Posts(
                  "https://i.pinimg.com/736x/a8/85/5a/a8855ab4fa01f8f2635fc1b27335d28c.jpg"),
              Posts(
                  "https://i.pinimg.com/736x/13/5a/f8/135af89aab97f21ebc6ba6c8fd0a59d9.jpg"),
              Posts(
                  "https://i.pinimg.com/736x/da/a8/1e/daa81e8fcd80001f76b915d3849e0a6a.jpg"),
              Posts(
                  "https://i.pinimg.com/736x/37/33/97/373397c37af785240666fce334e33c4f.jpg"),
              Posts(
                  "https://i.pinimg.com/736x/50/f8/76/50f876ddd499c5bfbb6c2aa9610e9ff4.jpg"),
              Posts(
                  "https://i.pinimg.com/736x/06/b0/98/06b0980c8ee42aae771c51b764769657.jpg"),
            ],
          ),
        ));
  }
}

Column Posts(LinkPost) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(LinkPost))),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 350,
      ),
      FavoriteButton(),
    ],
  );
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorited = false;
  int _counter = 0;
  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
      if (_isFavorited) {
        _counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            _isFavorited ? Icons.favorite : Icons.favorite_border_outlined,
            color: _isFavorited ? Colors.red : null,
          ),
          onPressed: _toggleFavorite,
        ),
        Text(" $_counter Likes")
      ],
    );
  }
}
