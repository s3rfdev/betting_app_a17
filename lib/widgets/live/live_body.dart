import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:intl/intl.dart';

import '../../models/dummy_data.dart';
import '../../pages/squads_page.dart';

class LiveBody extends StatefulWidget {
  LiveBody({
    super.key,
  });

  @override
  State<LiveBody> createState() => _LiveBodyState();
}

class _LiveBodyState extends State<LiveBody> {
  bool showInfo = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 386,
      height: 679,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                            DateFormat('hh:00').format(DateTime.now()),
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
                          left: 270,
                          top: 0,
                          child: Text(
                            DateFormat('dd.MM.yyyy').format(DateTime.now()),
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
                                  child:
                                      Image.network(factorList.list[2].img1)),
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
                                  child:
                                      Image.network(factorList.list[2].img2)),
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
          ),
          const SizedBox(height: 30),
          Container(
            width: 386,
            height: 81,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 386,
                    height: 81,
                    decoration: ShapeDecoration(
                      color: Color(0xFF467284),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 21,
                  top: 20,
                  child: Container(
                    width: 76,
                    height: 41,
                    padding: const EdgeInsets.only(left: 1),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/ic1.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Comments',
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
                  left: 141,
                  top: 20,
                  child: InkWell(
                    onTap: () => Get.to(() => SquadsPage()),
                    child: Container(
                      width: 52,
                      height: 41,
                      padding: const EdgeInsets.only(left: 1),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 22,
                            height: 18,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/ic2.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Squads',
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
                ),
                Positioned(
                  left: 237,
                  top: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        showInfo = false;
                      });
                    },
                    child: Container(
                      width: 57,
                      height: 41,
                      padding: const EdgeInsets.only(right: 1),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 18,
                            height: 18,
                            child: Image.asset(
                              'images/ic4.png',
                              color: !showInfo
                                  ? Color(0xFFFF5E00)
                                  : Color(0xFFE8EBEF),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Statistic',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: !showInfo
                                  ? Color(0xFFFF5E00)
                                  : Color(0xFFE8EBEF),
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
                ),
                Positioned(
                  left: 338,
                  top: 20,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        showInfo = true;
                      });
                    },
                    child: Container(
                      width: 27,
                      height: 41,
                      padding: const EdgeInsets.only(right: 1),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 18,
                            height: 18,
                            child: Image.asset(
                              'images/ic3.png',
                              color: showInfo ? Color(0xff2857CB) : null,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Info',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: showInfo
                                  ? Color(0xff2857CB)
                                  : Color(0xFFE8EBEF),
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
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          showInfo
              ? Image.asset('images/tab.png')
              : Container(
                  width: 386,
                  height: 380,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 386,
                          height: 380,
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
                          height: 42,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 358,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${20 + Random().nextInt(50)}%',
                                        style: TextStyle(
                                          color: Color(0xFFE8EAEE),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(width: 96),
                                      Text(
                                        'Ball Possession',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFE8EBEF),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(width: 96),
                                      Text(
                                        '${20 + Random().nextInt(50)}%',
                                        textAlign: TextAlign.right,
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
                                left: 0,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 115,
                                        top: 0,
                                        child: Container(
                                          width: 56,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2857CB),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 187,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 127,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2DA94E),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 76,
                        child: Container(
                          width: 358,
                          height: 42,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 358,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${Random().nextInt(20)}',
                                        style: TextStyle(
                                          color: Color(0xFFE8EAEE),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(width: 117),
                                      Text(
                                        'Goal Attemps',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFE8EBEF),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(width: 117),
                                      Text(
                                        '${Random().nextInt(20)}',
                                        textAlign: TextAlign.right,
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
                                left: 0,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 105,
                                        top: 0,
                                        child: Container(
                                          width: 66,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2857CB),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 187,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 86,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2DA94E),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 138,
                        child: Container(
                          width: 358,
                          height: 42,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 358,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Text(
                                          '${Random().nextInt(20)}',
                                          style: TextStyle(
                                            color: Color(0xFFE8EAEE),
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 132,
                                        top: 2,
                                        child: Text(
                                          'Shots on Goal',
                                          textAlign: TextAlign.center,
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
                                        left: 350,
                                        top: 0,
                                        child: Text(
                                          '${Random().nextInt(20)}',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFFE8EAEE),
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 97,
                                        top: 0,
                                        child: Container(
                                          width: 74,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2857CB),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 187,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 103,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2DA94E),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 200,
                        child: Container(
                          width: 358,
                          height: 42,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 358,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${Random().nextInt(20)}',
                                        style: TextStyle(
                                          color: Color(0xFFE8EAEE),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(width: 137),
                                      Text(
                                        'Corner',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFE8EBEF),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(width: 140),
                                      Text(
                                        '${Random().nextInt(20)}',
                                        textAlign: TextAlign.right,
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
                                left: 0,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 108,
                                        top: 0,
                                        child: Container(
                                          width: 63,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2857CB),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 187,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 44,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2DA94E),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 262,
                        child: Container(
                          width: 358,
                          height: 42,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 358,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Text(
                                          '${Random().nextInt(20)}',
                                          style: TextStyle(
                                            color: Color(0xFFE8EAEE),
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 149,
                                        top: 2,
                                        child: Text(
                                          'Throw-in',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF8E9094),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 343,
                                        top: 0,
                                        child: Text(
                                          '${Random().nextInt(20)}',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFFE8EAEE),
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 58,
                                        top: 0,
                                        child: Container(
                                          width: 113,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2857CB),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 187,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 54,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2DA94E),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 324,
                        child: Container(
                          width: 358,
                          height: 42,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 358,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${Random().nextInt(20)}',
                                        style: TextStyle(
                                          color: Color(0xFFE8EAEE),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(width: 156),
                                      Text(
                                        'Faul',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFE8EBEF),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(width: 146),
                                      Text(
                                        '0',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFFE8EAEE),
                                          fontSize: 13,
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
                                left: 0,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 108,
                                        top: 0,
                                        child: Container(
                                          width: 63,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2857CB),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 187,
                                top: 34,
                                child: Container(
                                  width: 171,
                                  height: 8,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 171,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFEAEAEA),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 27,
                                          height: 8,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF2DA94E),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
