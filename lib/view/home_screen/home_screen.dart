// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';
import 'package:netflix_clone/utils/db.dart';
import 'package:netflix_clone/utils/image_constant.dart';
import 'package:netflix_clone/view/home_screen/widgets/custom_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 430,
                width: double.infinity,
                child: Image.asset(
                  ImageContants.titlepic,
                  fit: BoxFit.cover,
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  children: [
                    Container(
                      width: 53,
                      height: 50,
                      child: Image.asset(
                        ImageContants.netflixLogoicon,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Tv Shows",
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 18,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              "#2 in Nigeria Today",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorConstant.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Icon(Icons.add, color: ColorConstant.white),
                  Text(
                    "My List",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ColorConstant.white,
                    borderRadius: BorderRadius.circular(8)),
                width: 111,
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Play',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.black),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(Icons.info_outline, color: ColorConstant.white),
                  Text(
                    "Info",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ColorConstant.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          SizedBox(
            height: 30,
            width: 10,
          ),
          CustomCard(
            circular: true,
            title: 'Preview',
            moviePoster: DataBase.cirMovie,
          ),
          CustomCard(
            title: 'Popular On Netfilx',
            moviePoster: DataBase.popMovie,
          ),
          CustomCard(
            title: 'Continue Watching',
            moviePoster: DataBase.contMovie,
          ),
        ],
      ),
    );
  }
}
