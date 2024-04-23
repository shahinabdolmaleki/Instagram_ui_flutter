import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:insta/screens/login_screen.dart';
import 'package:insta/widgets/bottom_navigation_screen_changer.dart';
import 'package:insta/widgets/story_widget.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#1C1F2E'),
      body: bodySwitchScreen(),
    );
  }

  Widget bodySwitchScreen() {
    return Stack(
      children: [
        const Image(
          width: double.infinity,
          height: double.infinity,
          repeat: ImageRepeat.repeat,
          image: AssetImage('images/pattern1.png'),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: const Image(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fitWidth,
            image: AssetImage('images/switch_account_background.png'),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 358),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: 340,
                      height: 352,
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            storyWidgetWithOutName(
                                imgStory: '1638185969698.jpg',
                                width: 110,
                                height: 110),
                            const Text(
                              'Shahin',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GB',
                                  fontSize: 16),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  minimumSize: const Size(129, 46),
                                  backgroundColor: HexColor('##F35383')),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PersistentBottomNavPage()));
                              },
                              child: const Text(
                                'Confirm',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'GB',
                                    fontSize: 16),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                });
                              },
                              child: const Text(
                                'Switch account',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'GB',
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '''Dont't have an account? /''',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'GB', fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'GB', fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
