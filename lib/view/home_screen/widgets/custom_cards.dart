// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.title,
      this.height = 200,
      this.width = 100,
      this.circular = false,
      required this.moviePoster});
  final String title;
  final double height;
  final double width;
  final List<String> moviePoster;
  final bool circular;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorConstant.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: circular == true
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                            color: ColorConstant.red,
                            image: DecorationImage(
                                image: NetworkImage(
                                  moviePoster[index],
                                ),
                                fit: BoxFit.cover)),
                        height: height,
                        width: width,
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
