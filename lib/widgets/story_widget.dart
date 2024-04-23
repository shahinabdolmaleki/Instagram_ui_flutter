import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget storyWidget({
  required String imgStory,
  required String nameStory,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: imgStory == 'icon_plus.png' ||
                        imgStory == 'vlog-logo-on-dark-eps-vector.jpg' ||
                        imgStory == 'C_Hello_World_Program.png' ||
                        imgStory == '200924-shopping-stock.jpg' ||
                        imgStory == 'vlog-logo-on-dark-eps-vector.jpg'
                    ? Colors.white
                    : HexColor('#F35383'),
                width: 2),
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(
              Radius.circular(17),
            ),
          ),
          height: 80,
          width: 80,
          child: Padding(
            padding: const EdgeInsets.all(2.5),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              child: InkWell(
                onTap: () {},
                child: Image(
                  image: AssetImage(
                    'images/$imgStory',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          nameStory.length > 10 ? nameStory.substring(0, 10) : nameStory,
          style: const TextStyle(color: Colors.white),
        ),
      )
    ],
  );
}

Widget storyWidgetWithOutName(
    {required String imgStory, required double width, required double height}) {
  return Column(children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: imgStory == 'icon_plus.png'
                  ? Colors.white
                  : HexColor('#F35383'),
              width: 2),
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(17),
          ),
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(2.5),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: InkWell(
              onTap: () {},
              child: Image(
                image: AssetImage(
                  'images/$imgStory',
                ),
              ),
            ),
          ),
        ),
      ),
    )
  ]);
}

Widget storyWidgetWithOutBorder({
  required String imgStory,
  required String nameStory,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: InkWell(
            onTap: () {},
            child: SizedBox(
              width: 75,
              height: 75,
              child: Image(
                image: AssetImage(
                  'images/$imgStory',
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          nameStory.length > 10 ? nameStory.substring(0, 10) : nameStory,
          style: const TextStyle(color: Colors.black),
        ),
      )
    ],
  );
}

Widget storyWidgetWithOutBorderAndName({
  required String imgStory,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: InkWell(
            onTap: () {},
            child: SizedBox(
              width: 60,
              height: 60,
              child: Image(
                image: AssetImage(
                  'images/$imgStory',
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
