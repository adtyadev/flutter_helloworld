import 'package:flutter/material.dart';
import 'package:flutter_helloworld/screens/app_screen.dart';
import 'package:flutter_helloworld/theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetScreen = <Widget>[
    AppScreen(),
    Center(
      child: Text("Helloworld 1 "),
    ),
    Center(
      child: Text("Helloworld 2 "),
    )
  ];

  void _onTapNavbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
            icon: Icon(Icons.backup_table_outlined),
            label: 'Application',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_rounded),
            label: 'LoremIpsum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_rounded),
            label: 'LoremIpsum',
          ),
        ],
      ),
      body: _widgetScreen.elementAt(_selectedIndex),
    );
  }
}
