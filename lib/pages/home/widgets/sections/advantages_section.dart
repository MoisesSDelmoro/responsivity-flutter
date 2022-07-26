import 'package:flutter/material.dart';
import 'package:responsividadeflutter/constants/constants.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildVerticalAdvantages(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      );
    }

    Widget buildHorizontalAdvantages(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      );
    }

    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth >= flutterAppMobileBreakpoints) {
          return Container(
            padding:
                const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 10,
              children: [
                buildHorizontalAdvantages(
                    '+55 mil alunos', 'Didática garantida'),
                buildHorizontalAdvantages(
                    '+55 mil alunos', 'Didática 100% online'),
                buildHorizontalAdvantages('+55 mil alunos', 'Curso vitalício'),
              ],
            ),
          );
        }
        return Container(
          padding:
              const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 10,
            children: [
              buildVerticalAdvantages('+55 mil alunos', 'Didática garantida'),
              buildVerticalAdvantages('+55 mil alunos', 'Didática 100% online'),
              buildVerticalAdvantages('+55 mil alunos', 'Curso vitalício'),
            ],
          ),
        );
      }),
    );
  }
}
