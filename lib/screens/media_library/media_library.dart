import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lark/screens/media_library/categoty_name_unchanged.dart';
import 'package:lark/widgets.dart';

import 'categoty_name.dart';

class MediaLibrary extends StatelessWidget {
  const MediaLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 9.0, right: 9.0, top: 57),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  //left: 23.0,
                  left: 14,
                  right: 10.0,
                ),
                child: Text(
                  'Моя медіатека',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              CupertinoSearchTextField(
                placeholder: 'Пошук плейлистів',
                placeholderStyle:
                    const TextStyle(color: Color.fromRGBO(255, 255, 255, 0.15)),
                itemSize: 20,
                backgroundColor: const Color.fromRGBO(56, 66, 76, 0.5),
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.15),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                borderRadius: BorderRadius.circular(5),
              ),
              const CategoryNameUnchanged(
                title: 'Улюблені треки',
              ),
              const CategoryNameUnchanged(
                title: 'Останні треки',
              ),
              const CategoryName(
                title: 'Українське',
              ),
              const CategoryName(
                title: 'Репчина',
              ),
              const CategoryName(
                title: 'Рок',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
