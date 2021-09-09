import 'package:flutter/material.dart';
import 'package:flutter_helloworld/theme.dart';
import 'course_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/logo.png'))),
            ),
            SizedBox(height: 96),
            Container(
              width: 267,
              height: 200,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/Scenes.png'))),
            ),
            SizedBox(height: 52),
            Text(
              'Up Your Skills',
              style: textBlack.copyWith(fontSize: 28),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'We provide content that helps\neveryone to learn anything',
              textAlign: TextAlign.center,
              style: textGray.copyWith(fontSize: 20),
            ),
            SizedBox(height: 96),
            Container(
              width: MediaQuery.of(context).size.width - (2 * defaultMargin),
              height: 50,
              decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.all(Radius.circular(17))),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CoursePage()));
                },
                child: Text(
                  "Get Started",
                  style: textWhite.copyWith(fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
