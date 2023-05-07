import 'package:flutter/material.dart';

class InstituteContainer extends StatelessWidget {
  final String logo;
  final String text;
  const InstituteContainer({Key? key, required this.logo, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          width: screenWidth * 0.85,
          decoration: const BoxDecoration(
              color: Color(0xFFAEC6D7),
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          child: Image.asset(
            logo,
            height: 70.0,
            width: 70.0,
            scale: 0.5,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontSize: 18.0, color: Colors.white, fontFamily: 'GT Sectra'),
        )
      ],
    );
  }
}
