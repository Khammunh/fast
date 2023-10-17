import 'package:flutter/material.dart';

import 'cardExample1.dart';
import 'cardExample2.dart';
import 'cardExample3.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Example'),
        ),
        body: const Column(
          children: [
            Spacer(),
            CardExample1(),
            Spacer(),
            CardExample2(),
            Spacer(),
            CardExample3(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
