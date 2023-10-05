import 'package:flutter/material.dart';

import 'ButtonTypesExample.dart';

void main() {
  runApp(
    const ButtonApp(),
  );
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Button Types';
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      title: title,
      home: Scaffold(
        body: const ButtonTypesExample(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.navigate_before),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50.0,
          ),
          color: Colors.yellowAccent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}
