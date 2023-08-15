import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/home/news_container.dart';
import '../widgets/news/hash_card.dart';
import '../widgets/news/news_small_container.dart';
import '../widgets/news/search_input.dart';
import '../widgets/news/top_news_container.dart';
import '../widgets/sport_select_menu.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool _showMenu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      bottomNavigationBar: BottomMenu(
        index: 1,
      ),
      appBar: myAppBar(
          title: 'News',
          changeMenu: () => setState(() {
                _showMenu = !_showMenu;
              })),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SportSelectMenu(showMenu: _showMenu),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: SearchInput(),
            ),
            TopNewsContainer(
              img:
                  'https://images.performgroup.com/di/library/omnisport/d5/e5/2_73252744.jpg?t=-188006743&operations=fit(707:)&w=707&quality=100',
              title:
                  'Postecoglou says Dier is still part of his plans at Tottenham',
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  NewsSmallContainer(
                      title:
                          'Chelsea loan goalkeeper Arrizabalaga to Real Madrid',
                      img:
                          'https://images.performgroup.com/di/library/omnisport/f4/bf/2_72353312.jpg?t=-176612487&operations=fit(707:)&w=707&quality=100'),
                  NewsSmallContainer(
                      img:
                          'https://images.performgroup.com/di/library/omnisport/ce/3c/2_73320482.jpg?t=-177814999&operations=fit(707:)&w=707&quality=100',
                      title:
                          'McGregor: Celtic\'s win at Aberdeen built resilience and confidence'),
                  NewsSmallContainer(
                      img:
                          'https://uk1.sportal365images.com/process/smp-image-api/livescore.com/08082023/734acf62-a046-42b2-94c9-198d6756d7c2.jpg?operations=fit(707:)&w=707&quality=100',
                      title:
                          'Premier League kits 2023-24: Every new home, away and third strip'),
                  NewsSmallContainer(
                      img:
                          'https://uk1.sportal365images.com/process/smp-image-api/livescore.com/20062023/7b69f45b-da32-4dc9-b32c-2896a4d1c48e.jpg?operations=fit(707:)&w=707&quality=100',
                      title:
                          'All the latest Osimhen news in bite-sized chunks'),
                  NewsSmallContainer(
                      img:
                          'https://uk1.sportal365images.com/process/smp-image-api/livescore.com/14082023/0f63812b-77dd-454b-b606-5550e7249f40.jpg?operations=fit(707:)&w=707&quality=100',
                      title:
                          'West Ham move gives Ward-Prowse chance to match Beckham record'),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HashCard(
                    title: 'soccer',
                  ),
                  HashCard(
                    title: 'H2H',
                  ),
                  HashCard(
                    title: 'News',
                  ),
                  HashCard(
                    title: 'football',
                  ),
                ],
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
