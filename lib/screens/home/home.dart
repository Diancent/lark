import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lark/screens/home/favorite_tracks.dart';
import 'package:lark/screens/home/latest_tracks.dart';
import 'package:lark/screens/home/rap_tracks.dart';
import 'package:lark/screens/home/rock_tracks.dart';
import 'package:lark/screens/home/ukrainian_tracks.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        //unselectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromRGBO(56, 66, 76, 1),
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
              ),
              label: 'Головна'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.check_box_outline_blank_rounded),
              label: 'Медіатека'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
              ),
              label: 'Пошук'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/tiles.svg',
              ),
              label: 'Плитки'),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 23.0, right: 10.0, top: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: Text(
                        'Головна',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 24,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/last.svg',
                      ),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/heart.svg',
                      ),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/settings.svg',
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
                const SizedBox(height: 44),
                const FavoriteTracks(),
                const SizedBox(height: 30),
                const LatestTracks(),
                const SizedBox(height: 30),
                const UkrainianTracks(),
                const SizedBox(height: 30),
                const RapTracks(),
                const SizedBox(height: 30),
                const RockTracks()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
