import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mellowdy/Screens/home_page.dart';
import 'package:mellowdy/Screens/library_page.dart';
import 'package:mellowdy/Screens/profile_page.dart';
import 'package:mellowdy/Screens/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    LibraryPage(),
    ProfilePage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: IndexedStack(
        index: _currentIndex,
        children: _children,
      )),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
          backgroundColor: Colors.white.withOpacity(0.2),
          selectedBackgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          borderRadius: 15.0,
          iconSize: 30.0,
          items: [
            FloatingNavbarItem(icon: Icons.home),
            FloatingNavbarItem(icon: Icons.search),
            FloatingNavbarItem(icon: Icons.queue_music),
            FloatingNavbarItem(icon: Icons.perm_identity_rounded),
          ],
          currentIndex: _currentIndex,
          onTap: onTabTapped),
    );
  }
}
