import 'package:flutter/material.dart';
import 'package:responsividadeflutter/constants/constants.dart';
import 'package:responsividadeflutter/pages/home/widgets/sections/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal:
                  constraints.maxWidth >= flutterAppTabletBreakpoints ? 0 : 16),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const CourseItem();
          });
    });
  }
}
