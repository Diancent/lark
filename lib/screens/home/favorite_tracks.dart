import 'package:flutter/material.dart';

class FavoriteTracks extends StatelessWidget {
  const FavoriteTracks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            'Улюблені треки',
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Card(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      'assets/images/travis.png',
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: const Color.fromRGBO(0, 0, 0, 0.67),
                      width: 145,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Travis Scott',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'HIGHEST IN THE ROOM',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Card(
                child: Stack(
                  //alignment: Alignment.center,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      'assets/images/toeternity.png',
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    /*Container(
                              color: const Color.fromRGBO(0, 0, 0, 0.67),
                              width: 145,
                              height: 40,
                            ),*/
                    Container(
                      color: const Color.fromRGBO(0, 0, 0, 0.67),
                      width: 145,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'To Eternity',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Осінь',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Card(
                child: Stack(
                  //alignment: Alignment.center,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      'assets/images/travis.png',
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    /*Container(
                              color: const Color.fromRGBO(0, 0, 0, 0.67),
                              width: 145,
                              height: 40,
                            ),*/
                    Container(
                      color: const Color.fromRGBO(0, 0, 0, 0.67),
                      width: 145,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Travis Scott',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'HIGHEST IN THE ROOM',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),
      ],
    );
  }
}
