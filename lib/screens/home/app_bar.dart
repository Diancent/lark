import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lark/screens/settings/settings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ));
          },
        ),
      ],
    );
  }
}
