import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lark/screens/home/home.dart';
import 'package:lark/screens/media_library/media_library.dart';
import 'package:lark/screens/search/search_page.dart';
import 'package:lark/screens/tiles/tiles_page.dart';

import '../widgets.dart';

class PagesHub extends StatefulWidget {
  const PagesHub({super.key});

  @override
  State<PagesHub> createState() => _PagesHubState();
}

class _PagesHubState extends State<PagesHub> {
  List pages = [
    Home(),
    MediaLibrary(),
    SearchPage(),
    TilesPage(),
  ];
  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: const Color.fromRGBO(56, 66, 76, 1),
        selectedItemColor: Colors.white,
        //iconSize: 25,

        items: [
          const BottomNavigationBarItem(
              /*icon: SvgPicture.asset(
                'assets/icons/home.svg',
              ),*/
              //icon: Icon(CupertinoIcons.home),
              icon: Icon(CupertinoIcons.music_house),
              label: 'Головна'),
          const BottomNavigationBarItem(
              //icon: Icon(Icons.check_box_outline_blank_rounded),
              icon: Icon(CupertinoIcons.collections),
              //icon: Icon(CupertinoIcons.music_albums),
              label: 'Медіатека'),
          const BottomNavigationBarItem(
              /*icon: SvgPicture.asset(
                'assets/icons/search.svg',
              ),*/
              icon: Icon(CupertinoIcons.search),
              label: 'Пошук'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/tiles.svg',
              ),
              //icon: Icon(CupertinoIcons.),
              label: 'Плитки'),
        ],
      ),
    );
  }
}
