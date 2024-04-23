import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:insta/widgets/story_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#1C1F2E'),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: HexColor('#1C1F2E'),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              height: 25,
              image: AssetImage(
                'images/moodinger_logo.png',
              ),
            ),
            Icon(
              Icons.inbox,
              size: 32,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    storyWidget(
                      imgStory: 'icon_plus.png',
                      nameStory: 'Your Story',
                    ),
                    storyWidget(
                      imgStory: 'BillGates-Headshot-2022.jpg',
                      nameStory: 'Bill Gates',
                    ),
                    storyWidget(
                      imgStory: 'mojadev.jpg',
                      nameStory: 'Mojavad_dev',
                    ),
                    storyWidget(
                      imgStory: '1638185969698.jpg',
                      nameStory: 'Shahin Abdolmaleki',
                    ),
                    storyWidget(
                      imgStory: 'markz.jpg',
                      nameStory: 'Mark Zuckerberg',
                    ),
                    storyWidget(
                      imgStory: 'imagesbrad.jpg',
                      nameStory: 'Brad Pitt',
                    ),
                  ],
                ),
              ),
            ),
            postWidget(
                username: 'Bill Gates',
                imgPost: 'bill3.jpg',
                imgPostProfile: 'billgates2.jpg'),
            postWidget(
                username: 'Mark',
                imgPost: 'mark2.jpg',
                imgPostProfile: 'markz.jpg'),
            postWidget(
                username: 'Shahin Abdolmaleki',
                imgPost: '1638185969698.jpg',
                imgPostProfile: '1638185969698.jpg'),
          ],
        ),
      ),
    );
  }

  Widget postWidget({
    required String username,
    required String imgPost,
    required String imgPostProfile,
  }) {
    bool islike = false;
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              storyWidgetWithOutName(
                  imgStory: imgPostProfile, height: 60, width: 60),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'GB',
                            fontSize: 19),
                      ),
                      const Text(
                        'uneited state',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const Icon(
                size: 45,
                color: Colors.white,
                Icons.more_vert,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 480,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    width: 440,
                    height: 440,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: Image(
                        image: AssetImage('images/$imgPost'),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  right: 32,
                  top: 15,
                  child: Icon(
                    color: Colors.white,
                    size: 30,
                    Icons.video_library,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: 365,
                        height: 46,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              HexColor('#FFFFFF').withAlpha(180),
                              HexColor('#FFFFFF').withAlpha(50),
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: islike == true
                                      ? const Icon(Icons.favorite_border,
                                          size: 29, color: Colors.white)
                                      : const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 29,
                                        ),
                                ),
                                const Text(
                                  '2.6k',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'GB',
                                      fontSize: 21),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: Colors.white,
                                      size: 29,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '2.6k',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'GB',
                                          fontSize: 21),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    barrierColor: Colors.transparent,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) => shareBottomSheet());
                              },
                              icon: const Icon(
                                Icons.open_in_new,
                                color: Colors.white,
                                size: 29,
                              ),
                            ),
                            const Icon(
                              Icons.bookmark_border,
                              color: Colors.white,
                              size: 29,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget shareBottomSheet() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          color: Colors.white.withOpacity(0.2),
          height: MediaQuery.of(context).size.height * 0.75,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 44, right: 44, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 75,
                    height: 5,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'GB',
                            fontSize: 25),
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style: const TextStyle(color: Colors.white),
                      obscureText: false,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        floatingLabelStyle:
                            const TextStyle(color: Colors.white),
                        hoverColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                            color: HexColor('#FFFFFF'),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        prefixIconColor: Colors.white,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 450,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 5,
                        runSpacing: 12,
                        children: [
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                          storyWidgetWithOutBorder(
                            imgStory: '1638185969698.jpg',
                            nameStory: 'Shain Abdolmaleki',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(160, 46),
                          backgroundColor: HexColor('#F35383'),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Send',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'GB'),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
