import 'package:flutter/material.dart';

class Course extends StatelessWidget {
  final String image;
  final String title;
  const Course({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Image.asset(
          image,
          width: double.infinity,
          fit: BoxFit.cover,
          height: screenHeight * 0.20,
        ),
        Positioned(
          bottom: 0,
          left: 30,
          right: 30,
          child: Container(
            color: const Color(0xFF6788A2),
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 16, color: Colors.black, fontFamily: 'GT Sectra'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
