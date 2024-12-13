import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AutoHomeAnimation extends StatefulWidget {
  const AutoHomeAnimation({super.key});

  @override
  State<AutoHomeAnimation> createState() => _AutoHomeAnimationState();
}

class _AutoHomeAnimationState extends State<AutoHomeAnimation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
          itemCount: _items.length,
          itemBuilder: (context, index, realIndex) => Container(
                decoration: BoxDecoration(
                    color:
                        index % 2 == 0 ? Colors.brown[100] : Colors.green[100],
                    borderRadius: BorderRadius.circular(80)),
                margin: EdgeInsets.all(8),
                height: 100,
                width: (MediaQuery.of(context).size.width - 10).abs() + 1,
                alignment: Alignment.center,
                child: Text(
                  _items[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
          options: CarouselOptions(
              autoPlay: true, autoPlayInterval: Duration(seconds: 5))),
    );
  }
}

final List<String> _items = [
  "It's time to SHINE❤️",
  "You are stronger than \nyou think ",
  "Small steps are better \nthan no steps",
  "You are made of MAGIC"
];
