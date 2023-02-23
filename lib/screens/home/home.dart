import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lark/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
