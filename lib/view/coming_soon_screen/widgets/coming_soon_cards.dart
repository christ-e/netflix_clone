// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';

class ComingSoonCards extends StatelessWidget {
  const ComingSoonCards({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.date,
  });
  final String title;
  final String subtitle;
  final String date;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 76,
            width: 146,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: ColorConstant.white),
              ),
              Text(
                subtitle,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: ColorConstant.white),
              ),
              Text(
                date,
              ),
            ],
          )
        ],
      ),
    );
  }
}
