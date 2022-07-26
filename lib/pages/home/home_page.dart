import 'package:flutter/material.dart';
import 'package:responsividadeflutter/pages/home/widgets/mobile_app_bar.dart';
import 'package:responsividadeflutter/pages/home/widgets/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          drawer: const Drawer(),
          appBar: constraints.maxWidth < 800
              ? const PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : const PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
                ),
        );
      },
    );
  }
}
