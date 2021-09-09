import 'package:flutter/material.dart';
import 'package:flutter_helloworld/theme.dart';

class CourseTile extends StatelessWidget {
  final String imageURL;
  final String title;
  final double value;
  final bool isLocked;

  CourseTile(
      {this.imageURL = "assets/images/icon.png",
      this.title = "Ideation",
      this.value = 0.6,
      this.isLocked = true});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageURL)))),
      title: Text(
        title,
        style: textBlack.copyWith(fontSize: 18),
      ),
      subtitle: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: LinearProgressIndicator(
          value: value,
          minHeight: 6,
          backgroundColor: Color(0xffEcEEF5),
          valueColor: AlwaysStoppedAnimation(Colors.deepOrange),
        ),
      ),
      trailing: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(!isLocked
                      ? 'assets/images/btn_play.png'
                      : 'assets/images/btn_play_inactive.png')))),
    );
  }
}
