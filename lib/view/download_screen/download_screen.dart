// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.black,
      appBar: AppBar(
        backgroundColor: ColorConstant.black,
        title: Text(
          "Downloads",
          style: TextStyle(
            color: ColorConstant.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Introducing Downloads For You",
                    style: TextStyle(
                        color: ColorConstant.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: ColorConstant.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 353,
              height: 41,
              color: ColorConstant.blue,
              child: Center(
                child: Text(
                  "SETUP",
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 239,
              height: 33,
              color: ColorConstant.grey,
              child: Center(
                child: Text(
                  "Find Something to Download",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.white,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
