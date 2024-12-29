import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StoryPeoplePage extends StatefulWidget {
  const StoryPeoplePage({super.key});

  @override
  State<StoryPeoplePage> createState() => _StoryPeoplePageState();
}

class _StoryPeoplePageState extends State<StoryPeoplePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text("Recomanded Stories!"),
          CarouselSlider.builder(
            itemCount: _items.length,
            itemBuilder: (context, index, realIndex) => Container(
              margin: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Row(
                  children: [
                    Expanded(
                      child: Image.network(
                        _items[index],
                        fit: BoxFit.cover,
                        height: double.infinity,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: double.infinity,
                      color: Color(0xB38aa893),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Laya Cafry\n",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: "Laya borned in 1986 in china ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal))
                                ]),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
            ),
          ),
        ],
      ),
    );
  }
}

// Replace these URLs with your desired images.
final List<String> _items = [
  'https://i.pinimg.com/736x/b9/e4/5d/b9e45d2667c272dfb56e22fc0e1fbc64.jpg',
  'https://i.pinimg.com/736x/3e/72/56/3e725600c732f0a90937a8e78874fa08.jpg',
  'https://i.pinimg.com/736x/05/07/b6/0507b65512adb879f946a37f97aae208.jpg',
];
final List<String> _description = [];
