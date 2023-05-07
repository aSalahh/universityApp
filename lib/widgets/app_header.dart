import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final String title;
  const AppHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 150.0,
          width: 150.0,
        ),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'GT Sectra'),
        )
      ],
    );
  }
}
