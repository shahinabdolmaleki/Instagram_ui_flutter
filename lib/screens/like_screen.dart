import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:insta/widgets/like_screen_widget.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      const Tab(
        text: 'Following',
      ),
      const Tab(text: 'You'),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: HexColor('#1C1F2E'),
        appBar: AppBar(
          backgroundColor: HexColor('#1C1F2E'),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            indicatorColor: HexColor('#F35383'),
            labelStyle: const TextStyle(
                fontSize: 25, fontFamily: 'GB', color: Colors.white),
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  likeScreenWidget(
                    optiontext: 'New',
                  ),
                  likeScreenWidgetToday(optiontext: 'Today')
                ],
              ),
            ),
            Column(
              children: [
                likeScreenWidget(
                  optiontext: 'New',
                ),
                likeScreenWidgetToday(optiontext: 'Today')
              ],
            )
          ],
        ),
      ),
    );
  }
}
