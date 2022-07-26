import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "images/courses_udemy.jpg",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        const Flexible(
          child: AutoSizeText(
            "Criação de Apps Android e iOS com Flutter - Comece já!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Text(
          "Moisés S Delmoro",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        const Text(
          "R\$ 27,90",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
