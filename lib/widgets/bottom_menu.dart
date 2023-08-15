import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/home_page.dart';
import '../pages/live_page.dart';
import '../pages/news_page.dart';

class BottomMenu extends StatefulWidget {
  BottomMenu({super.key, required this.index});
  int index;
  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star_border_outlined),
          label: '',
        ),
      ],
      currentIndex: widget.index,
      selectedItemColor: Colors.amber[800],
      onTap: (i) {
        if (i == 0) Get.offAll(() => HomePage());
        if (i == 1) Get.offAll(() => NewsPage());
        if (i == 2) Get.offAll(() => LivePage());
      },
    );
  }
}
