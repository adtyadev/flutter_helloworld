import 'package:flutter/material.dart';
import 'package:flutter_helloworld/pages/course_page.dart';
import 'package:flutter_helloworld/pages/home_page.dart';
import 'package:flutter_helloworld/pages/splash_page.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/built-with-angga': (context) => SplashPage(),
      },
    );
  }
}
