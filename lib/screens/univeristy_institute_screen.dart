import 'package:flutter/material.dart';
import 'package:univeristy/helper/app_coors.dart';
import 'package:univeristy/screens/university_courses.dart';
import 'package:univeristy/widgets/course_widget.dart';

import '../widgets/app_header.dart';
import '../widgets/inistitute_container.dart';

class UniversityInstitute extends StatelessWidget {
  const UniversityInstitute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(gradient: AppColors.bgColor),
            child: Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                const AppHeader(
                  title: 'Institute',
                ),
                const SizedBox(
                  height: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UniversityCourses(
                              universityName: 'Higher Technological Institute'),
                        ));
                  },
                  child: const InstituteContainer(
                    logo: 'assets/images/higher_technolog_cal_institute.png',
                    text: 'Higher Technological Institute',
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UniversityCourses(
                              universityName: 'Modern Academy'),
                        ));
                  },
                  child: const InstituteContainer(
                    logo: 'assets/images/modern_academy.png',
                    text: 'Modern Academy',
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UniversityCourses(
                              universityName: 'Future Academy'),
                        ));
                  },
                  child: const InstituteContainer(
                    logo: 'assets/images/future_academy.png',
                    text: 'Future Academy',
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UniversityCourses(
                              universityName:
                                  'The Higher Institute of Applied Arts'),
                        ));
                  },
                  child: const InstituteContainer(
                    logo:
                        'assets/images/the_higher_institute_of_applied_arts.png',
                    text: 'The Higher Institute of Applied Arts',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
