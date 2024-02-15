// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
    required this.image,
    required this.movie,
    //required this.search,
  });
  final String image;
  final String movie;
  // final List<Map<String, String>> search;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Container(
            width: double.infinity,
            height: 76,
            color: ColorConstant.grey,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover),
                  ),
                  width: 146,
                  height: 76,
                  //color: Colors.red,
                ),
                // SizedBox(
                //   width: 10,
                // ),
                Text(
                  movie,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorConstant.white,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.play_circle_outline_outlined,
                  size: 30,
                  color: ColorConstant.white,
                )
              ],
            )));
  }
}
