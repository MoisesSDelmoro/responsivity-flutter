import 'package:flutter/material.dart';

class WebAppBarResposiveContent extends StatelessWidget {
  const WebAppBarResposiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> buttonsLearn(constraints) {
      List<Widget> buttons = [];
      if (constraints.maxWidth >= 450) {
        buttons.addAll([
          const SizedBox(
            width: 8,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Aprender',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ]);
      }
      if (constraints.maxWidth >= 550) {
        buttons.addAll([
          const SizedBox(
            width: 8,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Flutter',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ]);
      }
      return buttons;
    }

    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.search,
                        ),
                        color: Colors.grey.shade500,
                        onPressed: () {},
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise por algo aqui',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ...buttonsLearn(constraints),
            ],
          );
        },
      ),
    );
  }
}
