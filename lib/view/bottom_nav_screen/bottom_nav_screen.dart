// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';
import 'package:netflix_clone/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone/view/download_screen/download_screen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/menu_screen/menu_screen.dart';

import 'package:netflix_clone/view/search_screen/search_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    ComingSoon(),
    DownloadScreen(),
    MenuScreen()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.black,
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            //print(value);
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: ColorConstant.white,
          unselectedItemColor: ColorConstant.grey,
          backgroundColor: ColorConstant.black,
          selectedFontSize: 8.2,
          unselectedFontSize: 8.2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: "Coming soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_sharp), label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
          ],
        ));
  }
}











// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   List<Widget> screens = [
//     // Center(child: Text("Home")),
//     // Center(child: Text("Search")),
//     // Center(child: Text("ComingSoon")),
//     // Center(child: Text("Downloads")),
//     // Center(child: Text("More")),
//   ];
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorConstant.black,
//       bottomNavigationBar: BottomNavigationBar(
//           onTap: (value) {
//             selectedIndex = value;

//             //print(value);
//             setState(() {});
//           },
//           type: BottomNavigationBarType.fixed,
//           currentIndex: selectedIndex,
//           selectedItemColor: ColorConstant.white,
//           unselectedItemColor: ColorConstant.grey,
//           backgroundColor: ColorConstant.nav_black,
//           selectedFontSize: 8.2,
//           unselectedFontSize: 8.2,
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.video_collection_outlined),
//                 label: 'Coming Soon'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.download), label: 'Downloads'),
//             BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
//           ]),
//       //body: HomeScreen(),
//       body: MenuScreen(),
//       //body: ComingSoon(),
//     );
//   }
// }
