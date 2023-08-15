import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/dummy_data.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 386,
      height: 158,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 386,
              height: 158,
              decoration: ShapeDecoration(
                color: Color(0xFF467284),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 14,
            top: 14,
            child: Container(
              width: 358,
              height: 17,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Text(
                      '19:30',
                      style: TextStyle(
                        color: Color(0xFFE8EBEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 166,
                    top: 0,
                    child: Text(
                      '87’',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF2857CB),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 293,
                    top: 0,
                    child: Text(
                      '17.06.2021',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFE8EBEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 27,
            top: 64,
            child: Container(
              width: 65,
              height: 80,
              padding: const EdgeInsets.only(right: 1),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Image.network(factorList.list[2].img1)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    factorList.list[2].name1,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE8EAEE),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 160,
            top: 61,
            child: Container(
              width: 66,
              height: 59,
              padding: const EdgeInsets.only(left: 1),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${Random().nextInt(6)} - ${Random().nextInt(6)}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE8EAEE),
                      fontSize: 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'FH 2-1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE8EBEF),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 286,
            top: 64,
            child: Container(
              width: 73,
              height: 90,
              padding: const EdgeInsets.only(right: 1),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 56,
                    height: 44,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Image.network(factorList.list[2].img2)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    factorList.list[2].name2,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE8EAEE),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
