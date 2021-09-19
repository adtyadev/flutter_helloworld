import 'package:flutter/material.dart';
import 'package:flutter_helloworld/theme.dart';
import 'package:flutter_helloworld/widgets/box_application.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int i = 0;
  final myController = TextEditingController();
  Map dataBuilder = {};
  Map data = {
    0: {
      "caption": "App by Built \nWith Angga",
      "image": "assets/images/Scenes.png",
      "color": "0x1A53B175",
      "borderColor": "0xff53B175",
      "visible": true,
      "routeNamed": "/built-with-angga"
    },
    1: {
      "caption": "Cooking Oil \n& Ghee",
      "image": "assets/images/fruits2.png",
      "color": "0x1AF8A44C",
      "borderColor": "0xffF8A44C",
      "visible": true,
      "routeNamed": "/"
    },
    2: {
      "caption": "Meet and Fish",
      "image": "assets/images/fruits.png",
      "color": "0x1AF7A593",
      "borderColor": "0xffF7A593",
      "visible": true,
      "routeNamed": "/"
    },
    3: {
      "caption": "Bakery and Snacks",
      "image": "assets/images/fruits2.png",
      "color": "0x1AD3B0E0",
      "borderColor": "0xffD3B0E0",
      "visible": true,
      "routeNamed": "/"
    },
    4: {
      "caption": "Daily and Eggs",
      "image": "assets/images/fruits.png",
      "color": "0x1AFDE598",
      "borderColor": "0xffFDE598",
      "visible": true,
      "routeNamed": "/"
    },
    5: {
      "caption": "Beverages",
      "image": "assets/images/fruits2.png",
      "color": "0x1AB7DFF5",
      "borderColor": "0xffB7DFF5",
      "visible": true,
      "routeNamed": "/"
    },
    6: {
      "caption": "Fresh Fruits \n& Vagatable",
      "image": "assets/images/fruits.png",
      "color": "0x1A836AF6",
      "borderColor": "0xff836AF6",
      "visible": true,
      "routeNamed": "/"
    },
    7: {
      "caption": "Cooking Oil \n& Ghee",
      "image": "assets/images/fruits2.png",
      "color": "0x1AF8A44C",
      "borderColor": "0xffF8A44C",
      "visible": true,
      "routeNamed": "/"
    },
  };

  void _searchApp() {
    setState(() {
      dataBuilder = {};
      i = 0;
    });
    data.forEach((index, values) {
      if (myController.text == "") {
        setState(() {
          dataBuilder[index] = values;
        });
      } else {
        var caption = values['caption'].replaceAll("\n", " ");
        caption = caption.toLowerCase();
        if (caption.contains(myController.text.toLowerCase())) {
          setState(() {
            dataBuilder[i] = values;
          });
          i++;
        }
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataBuilder = data;
    myController.addListener(_searchApp);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
          child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          decoration: BoxDecoration(color: backgroundColor),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                "Find Applications",
                style: textBlack.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 30),
              TextField(
                controller: myController,
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
              Expanded(
                  child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: dataBuilder.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => {
                      Navigator.pushNamed(
                          context, dataBuilder[index]["routeNamed"])
                    },
                    child: BoxApplication(
                      image: dataBuilder[index]["image"],
                      caption: dataBuilder[index]["caption"],
                      color: dataBuilder[index]["color"],
                      borderColor: dataBuilder[index]["borderColor"],
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      )),
    );
  }
}
