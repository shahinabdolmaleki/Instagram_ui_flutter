import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#1C1F2E'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 15, left: 15),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    style: const TextStyle(color: Colors.white),
                    obscureText: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: HexColor('#272B40'),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      suffixIcon: const Icon(Icons.document_scanner),
                      floatingLabelStyle: const TextStyle(color: Colors.white),
                      hoverColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: HexColor('#272B40'),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: HexColor('#272B40'),
                        ),
                      ),
                      hintText: 'Search...',
                      hintStyle: const TextStyle(
                          color: Colors.white, fontFamily: 'GB'),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 15, bottom: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: categoryBottom(hashtag: 'All'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: categoryBottom(hashtag: 'Account'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: categoryBottom(hashtag: 'Hashtag'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: categoryBottom(hashtag: 'Caption'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: categoryBottom(hashtag: 'Story'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: categoryBottom(hashtag: 'Comment'),
                      ),
                    ],
                  ),
                ),
              ),
              StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: tileSearchScreen(imgTile: 'tile1.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: tileSearchScreen(imgTile: 'tile2.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile3.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile4.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile5.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile6.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile7.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile9.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: tileSearchScreen(imgTile: 'tile8.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: tileSearchScreen(imgTile: 'tile10.jpg'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile11.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile5.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile6.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile7.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile8.png'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: tileSearchScreen(imgTile: 'tile2.png'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryBottom({required String hashtag}) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 80,
        height: 26,
        decoration: BoxDecoration(
          color: HexColor('#272B40'),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            hashtag,
            style: const TextStyle(
                color: Colors.white, fontFamily: 'GS', fontSize: 15),
          ),
        ),
      ),
    );
  }
}

Widget tileSearchScreen({required String imgTile}) {
  return ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(15)),
    child: Image(
      fit: BoxFit.cover,
      image: AssetImage('images/$imgTile'),
    ),
  );
}
