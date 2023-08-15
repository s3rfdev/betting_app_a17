import 'package:flutter/material.dart';

import '../../res/styles.dart';

class NewsSmallContainer extends StatelessWidget {
  NewsSmallContainer({super.key, required this.img, required this.title});
  String img;
  String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: 250,
          height: 180,
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
          bottom: 20,
          left: 20,
          child: Container(
            height: 40,
            width: 210,
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
