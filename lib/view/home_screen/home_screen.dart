import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant.dart';
import 'package:netflix_clone/utils/image_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 430,
              width: double.maxFinite,
              child: Image.asset(ImageContants.titlepic),
            )
          ],
        )
      ],
    );
  }
}
