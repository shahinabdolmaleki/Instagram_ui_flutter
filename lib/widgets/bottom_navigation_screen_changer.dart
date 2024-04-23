import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:insta/screens/add_post_screen.dart';
import 'package:insta/screens/home_screen.dart';
import 'package:insta/screens/like_screen.dart';
import 'package:insta/screens/profile_screen.dart';
import 'package:insta/screens/search_screen.dart';

class PersistentBottomNavPage extends StatelessWidget {
  final _hometab = GlobalKey<NavigatorState>();
  final _searchtab = GlobalKey<NavigatorState>();
  final _addposttab = GlobalKey<NavigatorState>();
  final _liketab = GlobalKey<NavigatorState>();
  final _profiletab = GlobalKey<NavigatorState>();

  PersistentBottomNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentBottomBarScaffold(
      items: [
        PersistentTabItem(
          tab: const HomePage(),
          icon: Icons.cottage,
          title: 'Home',
          navigatorkey: _hometab,
        ),
        PersistentTabItem(
          tab: const SearchPage(),
          icon: Icons.youtube_searched_for,
          title: 'Search',
          navigatorkey: _searchtab,
        ),
        PersistentTabItem(
          tab: const AddPostPage(),
          icon: Icons.add_box,
          title: 'Add',
          navigatorkey: _addposttab,
        ),
        PersistentTabItem(
          tab: const LikePage(),
          icon: Icons.favorite,
          title: 'Like',
          navigatorkey: _liketab,
        ),
        PersistentTabItem(
          tab: const ProfilePage(),
          icon: Icons.person,
          title: 'Profile',
          navigatorkey: _profiletab,
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchScreen();
  }
}

class AddPostPage extends StatelessWidget {
  const AddPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddPostScreen();
  }
}

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LikeScreen();
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileScreen();
  }
}

class PersistentBottomBarScaffold extends StatefulWidget {
  /// pass the required items for the tabs and BottomNavigationBar
  final List<PersistentTabItem> items;

  const PersistentBottomBarScaffold({super.key, required this.items});

  @override
  State<PersistentBottomBarScaffold> createState() =>
      _PersistentBottomBarScaffoldState();
}

class _PersistentBottomBarScaffoldState
    extends State<PersistentBottomBarScaffold> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        /// Check if curent tab can be popped
        if (widget.items[_selectedTab].navigatorkey?.currentState?.canPop() ??
            false) {
          widget.items[_selectedTab].navigatorkey?.currentState?.pop();
          return false;
        } else {
          // if current tab can't be popped then use the root navigator
          return true;
        }
      },
      child: Scaffold(
        /// Using indexedStack to maintain the order of the tabs and the state of the
        /// previously opened tab
        body: IndexedStack(
          index: _selectedTab,
          children: widget.items
              .map((page) => Navigator(
                    /// Each tab is wrapped in a Navigator so that naigation in
                    /// one tab can be independent of the other tabs
                    key: page.navigatorkey,
                    onGenerateInitialRoutes: (navigator, initialRoute) {
                      return [
                        MaterialPageRoute(builder: (context) => page.tab)
                      ];
                    },
                  ))
              .toList(),
        ),

        /// Define the persistent bottom bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: widget.items
              .map((item) => BottomNavigationBarItem(
                  backgroundColor: HexColor('#272B40'),
                  icon: Icon(
                    item.icon,
                    color: Colors.white,
                  ),
                  label: item.title))
              .toList(),
        ),
      ),
    );
  }
}

/// Model class that holds the tab info for the [PersistentBottomBarScaffold]
class PersistentTabItem {
  final Widget tab;
  final GlobalKey<NavigatorState>? navigatorkey;
  final String title;
  final IconData icon;

  PersistentTabItem(
      {required this.tab,
      this.navigatorkey,
      required this.title,
      required this.icon});
}
