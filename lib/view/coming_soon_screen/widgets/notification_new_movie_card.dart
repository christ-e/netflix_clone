// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';

class NotificationNewMovieCard extends StatelessWidget {
  const NotificationNewMovieCard(
      {super.key,
      required this.season,
      required this.movie,
      required this.info,
      required this.image,
      required this.thub1,
      required this.thub2,
      required this.thub3});
  final String season;
  final String movie;
  final String info;
  final String image;
  final String thub1;
  final String thub2;
  final String thub3;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 193,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Icon(Icons.notifications, color: ColorConstant.white),
              Text(
                'Reminder',
                style: TextStyle(color: ColorConstant.white),
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Icon(Icons.share, color: ColorConstant.white),
              Text(
                'Share',
                style: TextStyle(color: ColorConstant.white),
              )
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              season,
              style: TextStyle(color: ColorConstant.wordgrey),
            ),
            Text(
              movie,
              style: TextStyle(
                  color: ColorConstant.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              info,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                color: ColorConstant.wordgrey,
              ),
            ),
            Row(
              children: [
                Text(
                  thub1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 3,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  thub2,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 3,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  thub3,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
