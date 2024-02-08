// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> screens = [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("ComingSoon")),
    Center(child: Text("Downloads")),
    Center(child: Text("More")),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            if (value == selectedIndex) {}
            //print(value);
            setState(() {});
          },
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedIndex,
          selectedItemColor: ColorConstant.white,
          unselectedItemColor: ColorConstant.nav_black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: 'Coming Soon'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
          ]),
      body: screens[selectedIndex],
    );
  }
}
