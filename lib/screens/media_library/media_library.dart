import 'package:flutter/material.dart';

class MediaLibrary extends StatelessWidget {
  const MediaLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 23.0, right: 10.0, top: 44),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Моя медіатека',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 24,
                  ),
                ),
              ]),
        )
      ],
    );
  }
}
