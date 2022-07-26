import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsividadeflutter/pages/home/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => const MyApp(),
      // enabled: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsividade Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
