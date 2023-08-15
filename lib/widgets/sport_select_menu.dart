import 'package:flutter/material.dart';

import '../res/styles.dart';

class SportSelectMenu extends StatelessWidget {
  SportSelectMenu({super.key, required this.showMenu});
  bool showMenu;

  @override
  Widget build(BuildContext context) {
    return this.showMenu
        ? Container(
            color: blue2,
            width: double.infinity,
            height: 80,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: blue3,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      'Add',
                      style: h12w500White,
                    )
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: blue3,
                      child: const Icon(
                        Icons.sports_basketball_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      'NBA',
                      style: h12w500White,
                    )
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: const Icon(
                        Icons.sports_volleyball_outlined,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    Text(
                      'FIVB',
                      style: h12w500White.copyWith(color: Colors.red),
                    )
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: blue3,
                      child: const Icon(
                        Icons.sports_soccer_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      'FIFA',
                      style: h12w500White,
                    )
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: blue3,
                      child: const Icon(
                        Icons.sports_football_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      'NFL',
                      style: h12w500White,
                    )
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: blue3,
                      child: const Icon(
                        Icons.sports_tennis_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      'ATP',
                      style: h12w500White,
                    )
                  ],
                ),

                // Icon(Icons.sports_tennis_rounded),
              ],
            ),
          )
        : SizedBox();
  }
}
