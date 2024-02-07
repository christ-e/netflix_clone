// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';
import 'package:netflix_clone/utils/db.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.black,
      appBar: AppBar(
        backgroundColor: ColorConstant.black,
        title: Center(
          child: Text(
            "NETFLIX",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: ColorConstant.red,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Icon(
            Icons.edit,
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: DataBase.usernameImages.length + 1,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
              itemBuilder: (context, index) =>
                  index < DataBase.usernameImages.length
                      ? Column(
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber,
                                ),
                                child: Image.asset(
                                    DataBase.usernameImages[index]['image']!)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              DataBase.usernameImages[index]['name']!,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      : Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              radius: 50,
                              child: Icon(Icons.add, size: 50),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Add",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
        ),
      ),
    );
  }
}
