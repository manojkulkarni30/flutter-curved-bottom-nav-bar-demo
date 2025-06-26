import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_curved_bottom_nav_bar/pages/add_page.dart';
import 'package:flutter_curved_bottom_nav_bar/pages/home_page.dart';
import 'package:flutter_curved_bottom_nav_bar/pages/profile_page.dart';
import 'package:flutter_curved_bottom_nav_bar/pages/search_page.dart';
import 'package:flutter_curved_bottom_nav_bar/pages/settings_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    AddPage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF4B352A),
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF4B352A),
            foregroundColor: Colors.white,
            title: Text(
              "Curved Bottom Navigation Bar",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: _pages[_currentIndex],
          bottomNavigationBar: CurvedNavigationBar(
            color: Color(0xFF4B352A),
            buttonBackgroundColor: Color(0xFFCA7842),
            backgroundColor: Colors.transparent,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: [
              Icon(
                _currentIndex == 0 ? Icons.home : Icons.home_outlined,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                _currentIndex == 1 ? Icons.search : Icons.search_outlined,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                _currentIndex == 2 ? Icons.add : Icons.add_outlined,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                _currentIndex == 3 ? Icons.person_2 : Icons.person_2_outlined,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                _currentIndex == 4 ? Icons.settings : Icons.settings_outlined,
                size: 30,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
