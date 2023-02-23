import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryNameUnchanged extends StatelessWidget {
  const CategoryNameUnchanged({
    super.key,
    required this.title,
  });

  final String title;
  // final IconData iconTrash;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromRGBO(56, 66, 76, 0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/figure.svg',
                ),
                onPressed: null,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/redEdit.svg',
                ),
                onPressed: null,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Wrap(
                spacing: -20, // space between two icons
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/eye.svg',
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      //iconTrash,
                      'assets/icons/redTrash.svg',
                    ),
                    onPressed: null,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
