import 'package:flutter/material.dart';
import 'package:univeristy/helper/app_coors.dart';
import 'package:univeristy/widgets/course_widget.dart';

import '../widgets/app_header.dart';
import '../widgets/inistitute_container.dart';

class UniversityCourses extends StatelessWidget {
  final String universityName;
  const UniversityCourses({Key? key,required this. universityName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(gradient: AppColors.bgColor),
            child: Column(
              children:  [
                const SizedBox(
                  height: 10.0,
                ),
                AppHeader(
                  title: universityName,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Course(title:'Higher Institute Media' ,image: 'assets/images/media.png',),
                const SizedBox(
                  height: 20.0,
                ),
                Course(title:'Higher Institute of Computers' ,image: 'assets/images/computers.png',),
                const SizedBox(
                  height: 20.0,
                ),
                Course(title:'Higher Institute of Engineering' ,image: 'assets/images/engineering.png',),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
