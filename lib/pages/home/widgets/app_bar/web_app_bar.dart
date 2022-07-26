import 'package:flutter/material.dart';
import 'package:responsividadeflutter/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text('Flutter'),
          const SizedBox(width: 32),
          const WebAppBarResposiveContent(),
          const SizedBox(width: 32),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
          const SizedBox(width: 24),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: SizedBox(
              height: 38,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Fazer login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            height: 42,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Cadastre-se',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
