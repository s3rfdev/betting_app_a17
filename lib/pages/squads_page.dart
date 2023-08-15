import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/home/news_container.dart';
import '../widgets/sport_select_menu.dart';
import '../widgets/squads/bottom_container.dart';
import '../widgets/squads/pole.dart';

class SquadsPage extends StatefulWidget {
  const SquadsPage({super.key});

  @override
  State<SquadsPage> createState() => _SquadsPageState();
}

class _SquadsPageState extends State<SquadsPage> {
  bool _showMenu = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomMenu(),
      appBar: myAppBar(
          showBack: true,
          title: 'Squads',
          changeMenu: () => setState(() {
                _showMenu = !_showMenu;
              })),
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height - 150,
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        alignment: Alignment.center,
        child: Stack(alignment: Alignment.topCenter, children: [
          Pole(),
          Positioned(
            bottom: 0,
            child: BottomContainer(),
          ),
        ]),
      )),
    );
  }
}
