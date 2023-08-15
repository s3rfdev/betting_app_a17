import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/home/news_container.dart';
import '../widgets/sport_select_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        index: 0,
      ),
      appBar: myAppBar(
          title: 'Home',
          changeMenu: () => setState(() {
                _showMenu = !_showMenu;
              })),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SportSelectMenu(showMenu: _showMenu),
            NewsContainer(
              img:
                  'https://uk1.sportal365images.com/process/smp-image-api/livescore.com/14082023/9c21eb1e-f215-4f54-be4d-ec323f700e08.jpg',
              title:
                  'Leeds vs West Brom predictions: Expect entertainment at Elland Road',
            ),
            NewsContainer(
                img:
                    'https://images.performgroup.com/di/library/omnisport/c4/e1/2_73301340.jpg?t=-135812999&operations=fit(707:)&w=707&quality=100',
                title:
                    'De Bruyne left out of Manchester City\'s UEFA Super Cup squad'),
            NewsContainer(
                img:
                    'https://uk1.sportal365images.com/process/smp-image-api/livescore.com/13062023/4c03f1b1-ed61-422c-9f56-b1142c68f735.jpg?operations=fit(707:)&w=707&quality=100',
                title:
                    'Transfer Talk: All the latest Neymar news in bite-sized chunks'),
            NewsContainer(
                img:
                    'https://uk1.sportal365images.com/process/smp-image-api/livescore.com/14082023/ac57e27f-b3bf-4d4a-8c81-bf60de01e756.jpg?operations=fit(707:)&w=707&quality=100',
                title:
                    'Transfer Talk: Pavard and Todibo on United\'s cente-back shortlist'),
            NewsContainer(
              img:
                  'https://uk1.sportal365images.com/process/smp-image-api/livescore.com/14082023/c3089c57-231c-4d41-8808-d7ce1b9b855b.jpg?operations=fit(707:)&w=707&quality=100',
              title: 'United push for Pavard as Maguire replacement',
            ),
          ],
        ),
      ),
    );
  }
}
