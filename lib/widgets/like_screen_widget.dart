import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:insta/widgets/story_widget.dart';

Widget likeScreenWidget({
  required String optiontext,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Text(
          optiontext,
          style: const TextStyle(
              color: Colors.white, fontFamily: 'GB', fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        profileRow('Markus Muller', 'tile7.png', 5),
        profileRow('John warton', 'tile9.png', 2),
        profileRow('Emily Muller', 'tile6.png', 8),
      ],
    ),
  );
}

Widget profileRow(String name, String imgprofile, int timefollow) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: HexColor('#F35383'),
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        storyWidgetWithOutName(imgStory: imgprofile, width: 60, height: 60),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white, fontFamily: 'GB', fontSize: 20),
            ),
            Text(
              'Start following $timefollow min',
              style: const TextStyle(
                  color: Colors.grey, fontFamily: 'GM', fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          width: 60,
        ),
        OutlinedButton(
            onPressed: () {},
            child: const Text(
              'message',
              style: TextStyle(color: Colors.white),
            ))
      ],
    ),
  );
}

Widget likeScreenWidgetToday({
  required String optiontext,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Text(
          optiontext,
          style: const TextStyle(
              color: Colors.white, fontFamily: 'GB', fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        profileRowToday(
          'Markus Muller',
          'tile3.png',
        ),
        profileRowToday(
          'Markus Muller',
          'tile4.png',
        ),
        profileRowToday(
          'Markus Muller',
          'tile5.png',
        ),
        profileRowToday(
          'Markus Muller',
          'tile6.png',
        ),
        profileRowToday(
          'Markus Muller',
          'tile2.png',
        ),
        profileRowToday(
          'Markus Muller',
          'tile4.png',
        ),
        profileRowToday(
          'Markus Muller',
          'tile4.png',
        ),
      ],
    ),
  );
}

Widget profileRowToday(
  String name,
  String imgprofile,
) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        storyWidgetWithOutBorderAndName(imgStory: imgprofile),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white, fontFamily: 'GB', fontSize: 20),
            ),
            const Text(
              'Liked your post',
              style:
                  TextStyle(color: Colors.grey, fontFamily: 'GM', fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          width: 100,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(90, 40),
            backgroundColor: HexColor('#F35383'),
          ),
          onPressed: () {},
          child: const Text(
            'follow',
            style:
                TextStyle(color: Colors.white, fontFamily: 'GM', fontSize: 16),
          ),
        )
      ],
    ),
  );
}
