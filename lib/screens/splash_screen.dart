import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:insta/screens/switch_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    buildBody(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor('#1C1F2E'),
        body: bodySplashScreen(),
      ),
    );
  }

  Widget bodySplashScreen() {
    return Stack(
      children: [
        const Image(
          width: double.infinity,
          height: double.infinity,
          repeat: ImageRepeat.repeat,
          image: AssetImage('images/pattern1.png'),
        ),
        const Center(
          child: Image(
            width: 156,
            height: 77,
            image: AssetImage('images/logo_splash.png'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'from',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'GB',
                    fontSize: 15,
                    color: HexColor('#FFFFFF'),
                  ),
                ),
                Text(
                  'Epertflutter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'GB',
                    fontSize: 15,
                    color: HexColor('#55B9F7'),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildBody(BuildContext context) {
    return FutureBuilder(
      future: _login(),
      builder: (context, snapshot) {
        return SpinKitChasingDots();
      },
    );
  }

  Future<String> _login() async {
    await Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const SwitchScreen();
          },
        ),
      );
    });

    return "Logined";
  }
}
