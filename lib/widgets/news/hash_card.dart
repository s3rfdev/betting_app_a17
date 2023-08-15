import 'package:flutter/material.dart';

import '../../res/styles.dart';

class HashCard extends StatelessWidget {
  HashCard({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Text('#$title'.toUpperCase(), style: h12w400),
    );
  }
}
