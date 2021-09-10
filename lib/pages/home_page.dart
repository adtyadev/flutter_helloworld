import 'package:flutter/material.dart';
import 'package:flutter_helloworld/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            body: SafeArea(
                child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - (2 * defaultMargin),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                SizedBox(height: 8),
                Text(
                  "Find Applications",
                  style: textBlack.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Search",
                      hintText: "E-Commerce App",
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Color(0xffF2F3F2),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 174.5,
                      height: 189.11,
                      decoration: BoxDecoration(
                          color: Color(0x1A53B175),
                          border: Border.all(color: Color(0xff53B175)),
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 111.38,
                              height: 74.9,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/fruits.png')))),
                          Text(
                            "Fresh Fruits \n& Vagatable",
                            style: textBlack.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 174.5,
                      height: 189.11,
                      decoration: BoxDecoration(
                          color: Color(0x1AF8A44C),
                          border: Border.all(color: Color(0xffF8A44C)),
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 111.38,
                              height: 74.9,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('images/fruits2.png')))),
                          Text(
                            "Cooking Oil \n& Ghee",
                            style: textBlack.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ))));
  }
}
