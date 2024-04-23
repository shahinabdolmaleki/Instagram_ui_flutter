import 'package:flutter/mAteriAl.dArt';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:insta/widgets/story_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ProfileScreen> {
  bool hidden = true;

  Icon iconsituation = const Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return getLoginScreenData();
  }

  Widget getLoginScreenData() {
    return Scaffold(
      backgroundColor: HexColor('#1C1F2E'),
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 18.0, top: 20),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(10),
                  child: Container(
                    height: 14,
                    decoration: BoxDecoration(
                      color: HexColor('#1C1F2E'),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  )),
              backgroundColor: HexColor('#1C1F2E'),
              expandedHeight: 176,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('images/profcover.jpg'),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: profileContainer(),
            ),
          ];
        },
        body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: HexColor('#1C1F2E'),
              toolbarHeight: 0,
              bottom: TabBar(
                indicatorColor: HexColor('#F35383'),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(
                      icon: Icon(
                    Icons.collections_bookmark,
                    color: Colors.white,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  )),
                ],
              ),
            ),
            backgroundColor: HexColor('#1C1F2E'),
            body: TabBarView(children: [
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.only(
                        top: 15, left: 10, right: 10, bottom: 10),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(((context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset('images/item$index.png'),
                            ),
                          ),
                        );
                      }), childCount: 10),
                      gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            const QuiltedGridTile(1, 1),
                            const QuiltedGridTile(2, 2),
                            const QuiltedGridTile(1, 1),
                            const QuiltedGridTile(1, 1),
                            const QuiltedGridTile(1, 1),
                          ]),
                    ),
                  )
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 18, right: 18),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(((context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset('images/item$index.png'),
                            ),
                          ),
                        );
                      }), childCount: 10),
                      gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            const QuiltedGridTile(1, 1),
                            const QuiltedGridTile(2, 2),
                            const QuiltedGridTile(1, 1),
                            const QuiltedGridTile(1, 1),
                            const QuiltedGridTile(1, 1),
                          ]),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget profileContainer() {
    return Container(
      height: 482,
      width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor('#1C1F2E'),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                storyWidgetWithOutName(
                    imgStory: '1638185969698.jpg', width: 80, height: 80),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shahin Abdolmaleki',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'GB', fontSize: 25),
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                          color: Colors.grey, fontFamily: 'GM', fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
                const Icon(
                  Icons.edit_note,
                  color: Colors.white,
                  size: 35,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                  right: 15.0, left: 15.0, top: 15.0, bottom: 1.0),
              child: Text(
                '''I have 2 years of Android freelance work experience , and I have been programming Dart with the Flutter framework for 4 years now. I have published several programs with Android Studio.''',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'GM', fontSize: 14),
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.link,
                  color: Colors.white,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('https://github.com/shahinabdolmaleki'))
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.receipt_long,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GM', fontSize: 14),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Iran',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GM', fontSize: 14),
                )
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 5,
                  height: 40,
                ),
                Text(
                  '23',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GM', fontSize: 18),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Posts',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'GM', fontSize: 17),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '16.2K',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GM', fontSize: 18),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Followers',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'GM', fontSize: 17),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '280',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GM', fontSize: 18),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Following',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'GM', fontSize: 17),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(187, 46),
                      backgroundColor: HexColor('#F35383')),
                  onPressed: () {},
                  child: const Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GM', fontSize: 18),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(187, 46),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Message',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GM', fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  storyWidget(imgStory: 'icon_plus.png', nameStory: 'New'),
                  storyWidget(
                      imgStory: 'vlog-logo-on-dark-eps-vector.jpg',
                      nameStory: 'Daily Vlog'),
                  storyWidget(
                      imgStory: 'C_Hello_World_Program.png',
                      nameStory: 'Programming'),
                  storyWidget(
                      imgStory: '200924-shopping-stock.jpg',
                      nameStory: 'Shoping'),
                  storyWidget(
                      imgStory: 'C_Hello_World_Program.png',
                      nameStory: 'Project')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
