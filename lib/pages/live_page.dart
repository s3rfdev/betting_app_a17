import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/home/news_container.dart';
import '../widgets/live/live_body.dart';
import '../widgets/sport_select_menu.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  bool _showMenu = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        index: 2,
      ),
      appBar: myAppBar(
          title: 'Live Score',
          changeMenu: () => setState(() {
                _showMenu = !_showMenu;
              })),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        alignment: Alignment.center,
        child: LiveBody(),
      )),
    );
  }
}
