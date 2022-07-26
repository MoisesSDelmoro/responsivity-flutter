import 'package:flutter/material.dart';
import 'package:responsividadeflutter/constants/constants.dart';
import 'package:responsividadeflutter/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsividadeflutter/pages/home/widgets/section/top_section.dart';
import 'package:responsividadeflutter/pages/home/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          drawer: constraints.maxWidth < flutterAppMobileBreakpoints
              ? const Drawer()
              : null,
          appBar: constraints.maxWidth < flutterAppMobileBreakpoints
              ? const PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : const PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
                ),
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [
                  TopSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
