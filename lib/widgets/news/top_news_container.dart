import 'package:flutter/material.dart';

import '../../res/styles.dart';

class TopNewsContainer extends StatelessWidget {
  TopNewsContainer({super.key, required this.img, required this.title});
  String img;
  String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: blue4,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 40,
          child: Container(
            height: 30,
            width: 240,
            child: Text(
              title,
              style: h12w500White,
              maxLines: 2,
              overflow: TextOverflow.fade,
            ),
          ),
        )
      ],
    );
  }
}
