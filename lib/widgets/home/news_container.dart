import 'package:flutter/material.dart';

import '../../res/styles.dart';

class NewsContainer extends StatelessWidget {
  NewsContainer({super.key, required this.img, required this.title});
  String img;
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.sports_soccer_outlined,
                color: grey,
              ),
              SizedBox(width: 10),
              Text(
                'FIFA',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: h14w500,
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: h14w500,
          ),
          SizedBox(height: 20),
          Image.network(img),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1 hour ago',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: h14w500,
              ),
              Row(
                children: [
                  Icon(
                    Icons.share,
                    color: grey,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.ios_share_rounded,
                    color: grey,
                  ),
                  SizedBox(width: 10),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
