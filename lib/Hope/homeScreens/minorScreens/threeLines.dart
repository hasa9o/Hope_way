import 'package:flutter/material.dart';
import 'package:hope_way_app/Hope/homeScreens/home.dart';
import 'package:hope_way_app/Hope/homeScreens/saveMedia/showSaved.dart';

import '../bottomNavigation.dart';

class ThreeLines extends StatefulWidget {
  const ThreeLines({super.key, required this.title});

  final String title;

  @override
  State<ThreeLines> createState() => _ThreeLinesState();
}

class _ThreeLinesState extends State<ThreeLines> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    SavedPostsPage(),
    Text(
      'Index 1: Home',
      style: optionStyle,
    ),
    Text(
      'Index 2: Business',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Change the color of the back arrow
        ),
        backgroundColor: Color(0xff225036),
        title: Text(widget.title),
        actions: [
          Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(5, 5),
                elevation: 0,
                backgroundColor: const Color(0xff225036),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavigationScreens()),
                );
              },
              child: Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 24,
              ))
        ],
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff225036)),
              child: Text('Settings'),
            ),
            ListTile(
              title: const Text('Settings'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Business'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Saved Media'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);

                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => SavedPostsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
