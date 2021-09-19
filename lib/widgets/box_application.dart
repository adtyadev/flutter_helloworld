import 'package:flutter/material.dart';
import 'package:flutter_helloworld/theme.dart';

class BoxApplication extends StatelessWidget {
  final String image;
  final String caption;
  final String color;
  final String borderColor;

  BoxApplication(
      {this.image = "images/fruits.png",
      this.caption = "Loremipsum",
      this.color = "0x1A53B175",
      this.borderColor = "0xff53B175"});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - (2 * defaultMargin)) * 0.50,
      height: (MediaQuery.of(context).size.width - (2 * defaultMargin)) * 0.52,
      decoration: BoxDecoration(
          color: Color(int.parse(color)),
          border: Border.all(color: Color(int.parse(borderColor))),
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              width: 111.38,
              height: 74.9,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image)))),
          Text(
            caption,
            style:
                textBlack.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
