import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../animation/homeAnimation.dart';
import 'interactions/interactions.dart';
import 'saveMedia/savedMedia.dart';

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
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff225036),
          title: Center(
            child: Text(
              "Hope Way",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: FadeInUp(
            duration: Duration(milliseconds: 1500),
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
                    "https://i.pinimg.com/736x/2d/4d/aa/2d4daaa2161462d3448eaec8410aae30.jpg"),
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
          ),
        ));
  }
}

Column Posts(String LinkPost) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.network(
          LinkPost,
          width: 350,
          height: 450,
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
            // FavoriteButton(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SavedButton(postLink: LinkPost),
            ),
          ],
        ),
      ),
    ],
  );
}

// class FavoriteButton extends StatefulWidget {
//   const FavoriteButton({super.key});
//
//   @override
//   State<FavoriteButton> createState() => _FavoriteButtonState();
// }
//
// class _FavoriteButtonState extends State<FavoriteButton> {
//   bool _isFavorited = false;
//   int _counter = 0;
//   void _toggleFavorite() {
//     setState(() {
//       _isFavorited = !_isFavorited;
//       if (_isFavorited) {
//         _counter++;
//       } else
//         _counter--;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         IconButton(
//           icon: Icon(
//             _isFavorited ? Icons.favorite : Icons.favorite_border_outlined,
//             color: _isFavorited ? Colors.red : null,
//           ),
//           onPressed: _toggleFavorite,
//         ),
//         Text(" $_counter Likes")
//       ],
//     );
//   }
// }

// class ChangeColor extends StatefulWidget {
//   const ChangeColor({super.key});
//
//   @override
//   State<ChangeColor> createState() => _ChangeColorState();
// }
//
// class _ChangeColorState extends State<ChangeColor> {
//   Color _currentColor = Colors.pink;
//   void _changingColor() {
//     setState(() {
//       _currentColor = _currentColor == Colors.pink ? Colors.green : Colors.pink;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: GestureDetector(
//           onTap: _changingColor,
//           child: Container(
//             decoration: BoxDecoration(
//                 color: _currentColor, borderRadius: BorderRadius.circular(60)),
//             width: MediaQuery.of(context).size.width,
//             height: 100,
//             child: Center(child: Text("click me")),
//           ),
//         ),
//       ),
//     );
//   }
// }
