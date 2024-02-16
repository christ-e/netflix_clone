// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';
import 'package:netflix_clone/utils/db.dart';
import 'package:netflix_clone/utils/image_constant.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.black,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 90,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                scrollDirection: Axis.horizontal,
                // physics: ScrollPhysics(),
                itemCount: DataBase.usernameImages.length,
                itemBuilder: (context, index) =>
                    index < DataBase.usernameImages.length
                        ? Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: ColorConstant.red,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          DataBase.usernameImages[index]
                                              ['image']!,
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(5)),

                                width: 73,
                                height: 69,
                                //color: Colors.red,
                              ),
                              Text(
                                DataBase.usernameImages[index]['name']!,
                                style: TextStyle(
                                    color: ColorConstant.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              // SizedBox(
                              //   height: 50,
                              // ),
                              CircleAvatar(
                                radius: 25,
                                child: Image.asset(ImageContants.add),
                              ),
                              // SizedBox(
                              //   height: 3,
                              // ),
                              Text(
                                "Add",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstant.white,
                ),
                Text(
                  "Manage Profile",
                  style: TextStyle(
                      color: ColorConstant.white, fontWeight: FontWeight.bold),
                )
              ]),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 290,
            color: ColorConstant.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.message_outlined,
                      size: 40,
                      color: ColorConstant.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Tell friends about Netflix",
                    style: TextStyle(
                        color: ColorConstant.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: ColorConstant.white,
                      )
                      //fontWeight: FontWeight.bold,
                      //fontSize: 25),
                      ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Terms & Conditons',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: ColorConstant.wordgrey,
                      )
                      //fontWeight: FontWeight.bold,
                      //fontSize: 25),
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorConstant.black,
                          borderRadius: BorderRadius.circular(5)),
                      height: 37,
                      width: 247,

                      //color: ColorConstant.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorConstant.white,
                          borderRadius: BorderRadius.circular(5)),
                      height: 37,
                      width: 96,

                      child: Center(
                        child: Text('Copy Link',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ColorConstant.black,
                            )
                            //fontWeight: FontWeight.bold,
                            //fontSize: 25),
                            ),
                      ),
                      //color: ColorConstant.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  ImageContants.whatsapp,
                                ),
                                fit: BoxFit.cover),
                            //color: ColorConstant.red,
                            borderRadius: BorderRadius.circular(5)),
                        height: 40,
                        width: 42,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  ImageContants.facebook,
                                ),
                                fit: BoxFit.cover),
                            //color: ColorConstant.red,
                            borderRadius: BorderRadius.circular(5)),
                        height: 40,
                        width: 42,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  ImageContants.gmail,
                                ),
                                fit: BoxFit.cover),
                            //color: ColorConstant.red,
                            borderRadius: BorderRadius.circular(5)),
                        height: 40,
                        width: 42,
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                //color: ColorConstant.red,
                                borderRadius: BorderRadius.circular(5)),
                            height: 40,
                            width: 42,
                            child: Icon(
                              Icons.more_horiz_rounded,
                              color: ColorConstant.white,
                              size: 30,
                            ),
                          ),
                          Text(
                            'More',
                            style: TextStyle(color: ColorConstant.white),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //2ndcontainer

          Row(
            children: [
              Icon(
                Icons.check_outlined,
                size: 50,
                color: ColorConstant.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "My List",
                style: TextStyle(color: ColorConstant.white, fontSize: 20),
              ),
            ],
          ),
          Divider(
            color: ColorConstant.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "App Settings",
                  style: TextStyle(color: ColorConstant.white, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Account",
                  style: TextStyle(color: ColorConstant.white, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Help",
                  style: TextStyle(color: ColorConstant.white, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sign Out",
                  style: TextStyle(color: ColorConstant.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
