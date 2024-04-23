import 'pAckAge:flutter/mAteriAl.dArt';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hexcolor/hexcolor.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#1C1F2E'),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Post',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 35,
                  color: Colors.white,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.chevron_right,
                  size: 35,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
      backgroundColor: HexColor('#1C1F2E'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 3,
                child: tileAddScreen(imgTile: 'tileadd2.jpg'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: tileAddScreen(imgTile: 'tile3.png'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: tileAddScreen(imgTile: 'tile4.png'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: tileAddScreen(imgTile: 'tile5.png'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: tileAddScreen(imgTile: 'tile6.png'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: tileAddScreen(imgTile: 'tile7.png'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: tileAddScreen(imgTile: 'tile8.png'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: tileAddScreen(imgTile: 'tile4.png'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: tileAddScreen(imgTile: 'tile3.png'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: tileAddScreen(imgTile: 'tile9.png'),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget tileAddScreen({required String imgTile}) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('images/$imgTile'),
      ),
    );
  }
}
