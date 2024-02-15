// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';
import 'package:netflix_clone/utils/db.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/coming_soon_cards.dart';
import 'package:netflix_clone/view/coming_soon_screen/widgets/notification_new_movie_card.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.black,
      appBar: AppBar(
        backgroundColor: ColorConstant.black,
        leading: CircleAvatar(
          backgroundColor: ColorConstant.black,
          radius: 30,
          child: Icon(
            Icons.notifications,
            color: ColorConstant.red,
            size: 35,
          ),
        ),
        title: Row(children: [
          Text(
            "Notifications",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: ColorConstant.white),
          )
        ]),
      ),
      body: SafeArea(
        child: Column(children: [
          Container(
            // height: 100,
            color: ColorConstant.grey,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ComingSoonCards(
                  title: 'New Arrival',
                  image: DataBase.notifi[index]["image"].toString(),
                  subtitle: DataBase.notifi[index]["Movie"].toString(),
                  date: DataBase.notifi[index]["date"].toString(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 433,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: DataBase.notification.length,
              itemBuilder: (context, index) => NotificationNewMovieCard(
                season: DataBase.notification[index]["season"].toString(),
                movie: DataBase.notification[index]["movie"].toString(),
                info: DataBase.notification[index]["info"].toString(),
                image: DataBase.notification[index]["image"].toString(),
                thub1: DataBase.notification[index]["thub1"].toString(),
                thub2: DataBase.notification[index]["thub2"].toString(),
                thub3: DataBase.notification[index]["thub3"].toString(),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
