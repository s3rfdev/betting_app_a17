import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';

myAppBar(
    {required Function changeMenu,
    required String title,
    bool showBack = false}) {
  return AppBar(
    actions: [
      InkWell(
        onTap: () => changeMenu(),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.more_vert_rounded),
        ),
      )
    ],
    leading: showBack
        ? IconButton(
            onPressed: () {
              Get.back();
            },
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back),
            ))
        : IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.menu),
            )),
    backgroundColor: blue,
    centerTitle: true,
    title: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            scale: 1.4,
          ),
          Text(
            title,
            style: h16w600White,
          ),
        ],
      ),
    ),
  );
}
