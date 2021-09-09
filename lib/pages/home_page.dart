import 'package:flutter/material.dart';
import 'package:flutter_helloworld/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "HelloWorld",
            style: textBlack.copyWith(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
