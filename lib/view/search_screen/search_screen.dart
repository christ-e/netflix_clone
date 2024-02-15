// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';
import 'package:netflix_clone/utils/db.dart';
import 'package:netflix_clone/view/search_screen/widgets/search_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.black,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 35,
        ),
        Container(
          height: 52,
          color: ColorConstant.lightgrey,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(
              Icons.search,
              color: ColorConstant.white,
            ),
            Text(
              'Search for a movie,show,etc..',
              style: TextStyle(color: ColorConstant.white),
            ),
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.mic,
              color: ColorConstant.white,
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Top Searches",
          style: TextStyle(
              color: ColorConstant.white,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        // SizedBox(
        //   height: 5,
        // ),
        SizedBox(
          height: 575,
          child: ListView.builder(
              itemCount: DataBase.searchMovie.length,
              itemBuilder: (context, index) => SearchCard(
                    image: DataBase.searchMovie[index]['image'].toString(),
                    movie: DataBase.searchMovie[index]['movie'].toString(),
                  )),
        )
      ]),
    );
  }
}
