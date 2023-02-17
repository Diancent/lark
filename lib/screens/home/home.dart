import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lark/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    /*bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: const Color.fromRGBO(56, 66, 76, 1),
        selectedItemColor: Colors.white,
        //iconSize: 25,
        currentIndex: _currentIndex,
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
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),*/
    // body: ListView(
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 23.0, right: 10.0, top: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              SizedBox(height: 44),
              FavoriteTracks(),
              SizedBox(height: 30),
              LatestTracks(),
              SizedBox(height: 30),
              UkrainianTracks(),
              SizedBox(height: 30),
              RapTracks(),
              SizedBox(height: 30),
              RockTracks()
            ],
          ),
        ),
      ],
    );
  }
}
