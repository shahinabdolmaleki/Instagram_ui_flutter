import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidden = true;

  Icon iconsituation = const Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return getLoginScreenData();
  }

  Widget getLoginScreenData() {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              HexColor('#323A99'),
              HexColor('#F98BFC'),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Stack(
            children: [
              const Image(
                image: AssetImage('images/rocket.png'),
              ),
              Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomCenter, child: logInContainer()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget logInContainer() {
    return Container(
      height: 428,
      decoration: BoxDecoration(
        color: HexColor('#1C1F2E'),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign in to ',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GB', fontSize: 16),
                ),
                Image(image: AssetImage('images/mood.png'))
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 54,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white),
                obscureText: false,
                decoration: InputDecoration(
                  floatingLabelStyle: const TextStyle(color: Colors.white),
                  hoverColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                      color: HexColor('#F35383'),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                      color: HexColor('#FFFFFF'),
                    ),
                  ),
                  prefixIconColor: Colors.white,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 54,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                obscureText: hidden,
                decoration: InputDecoration(
                  floatingLabelStyle: const TextStyle(color: Colors.white),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidden = !hidden;
                          if (hidden == true) {
                            iconsituation = const Icon(Icons.visibility);
                          } else {
                            iconsituation = const Icon(Icons.disabled_visible);
                          }
                        });
                      },
                      icon: iconsituation
                      // Icons.disabled_visible,
                      ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                      color: HexColor('#F35383'),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                      color: HexColor('#FFFFFF'),
                    ),
                  ),
                  prefixIconColor: Colors.white,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: const Size(129, 46),
                  backgroundColor: HexColor('##F35383')),
              onPressed: () {},
              child: const Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'GB', fontSize: 16),
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
    );
  }
}
