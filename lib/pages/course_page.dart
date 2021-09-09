import 'package:flutter/material.dart';
import 'package:flutter_helloworld/theme.dart';
import 'package:flutter_helloworld/widgets/course_tile.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/video.png')))),
        Container(
          child: ListView(
            children: [
              SizedBox(height: 200),
              Container(
                // height: 200,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Brand Marketing Design",
                      style: textBlack.copyWith(fontSize: 22),
                    ),
                    Text(
                      "How to build strong company with passion",
                      style: textGray.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    // NOTE : PREPARING
                    Text(
                      "# Preparing",
                      style: textBlack.copyWith(fontSize: 18),
                    ),
                    CourseTile(
                      imageURL: "assets/images/icon.png",
                      title: "Ideation",
                      value: 0.6,
                      isLocked: false,
                    ),
                    CourseTile(
                      imageURL: "assets/images/icon-2.png",
                      title: "Validation Idea",
                      value: 0.2,
                      isLocked: false,
                    ),
                    CourseTile(
                      imageURL: "assets/images/icon-3.png",
                      title: "Strong Promotion",
                      value: 0.0,
                      isLocked: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // NOTE : Targeting Customer
                    Text(
                      "# Targeting Customer",
                      style: textBlack.copyWith(fontSize: 18),
                    ),
                    CourseTile(
                      imageURL: "assets/images/icon.png",
                      title: "App Survey",
                      value: 0.0,
                      isLocked: true,
                    ),
                    CourseTile(
                      imageURL: "assets/images/icon-2.png",
                      title: "Get Funding",
                      value: 0.0,
                      isLocked: true,
                    ),
                    CourseTile(
                      imageURL: "assets/images/icon-3.png",
                      title: "Ship To Investor",
                      value: 0.0,
                      isLocked: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Note : Button
                    Container(
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      height: 50,
                      decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Finish and Take Quiz",
                          style: textWhite.copyWith(fontSize: 22),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffbdbdbd),
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Skip To Home",
                          style: textBlack.copyWith(fontSize: 22),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
