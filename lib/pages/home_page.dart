import 'package:flutter/material.dart';
import 'package:flutter_helloworld/theme.dart';
import 'package:flutter_helloworld/widgets/box_application.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int i = 0;
  final myController = TextEditingController();
  Map dataBuilder = {};
  Map data = {
    0: {
      "caption": "Fresh Fruits \n& Vagatable",
      "image": "assets/images/fruits.png",
      "color": "0x1A53B175",
      "borderColor": "0xff53B175",
      "visible": true,
    },
    1: {
      "caption": "Cooking Oil \n& Ghee",
      "image": "assets/images/fruits2.png",
      "color": "0x1AF8A44C",
      "borderColor": "0xffF8A44C",
      "visible": true,
    },
    2: {
      "caption": "Meet and Fish",
      "image": "assets/images/fruits.png",
      "color": "0x1AF7A593",
      "borderColor": "0xffF7A593",
      "visible": true
    },
    3: {
      "caption": "Bakery and Snacks",
      "image": "assets/images/fruits2.png",
      "color": "0x1AD3B0E0",
      "borderColor": "0xffD3B0E0",
      "visible": true
    },
    4: {
      "caption": "Daily and Eggs",
      "image": "assets/images/fruits.png",
      "color": "0x1AFDE598",
      "borderColor": "0xffFDE598",
      "visible": true
    },
    5: {
      "caption": "Beverages",
      "image": "assets/images/fruits2.png",
      "color": "0x1AB7DFF5",
      "borderColor": "0xffB7DFF5",
      "visible": true
    },
    6: {
      "caption": "Fresh Fruits \n& Vagatable",
      "image": "assets/images/fruits.png",
      "color": "0x1A836AF6",
      "borderColor": "0xff836AF6",
      "visible": true
    },
    7: {
      "caption": "Cooking Oil \n& Ghee",
      "image": "assets/images/fruits2.png",
      "color": "0x1AF8A44C",
      "borderColor": "0xffF8A44C",
      "visible": true
    },
  };

  void _onTapNavbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          print("cek");
          setState(() {
            dataBuilder[i] = values;
          });
          i++;
        }
      }
    });
    print(dataBuilder);
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
    print("DISPOSE");
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onTapNavbar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Account',
          ),
        ],
      ),
      body: GestureDetector(
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
                    return Visibility(
                      child: BoxApplication(
                        image: dataBuilder[index]["image"],
                        caption: dataBuilder[index]["caption"],
                        color: dataBuilder[index]["color"],
                        borderColor: dataBuilder[index]["borderColor"],
                      ),
                      visible: dataBuilder[index]["visible"],
                    );
                  },
                ))
              ],
            ),
          ),
        )),
      ),
    );
  }
}
