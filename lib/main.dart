import 'package:flutter/material.dart';

import 'fabExample.dart';

void main() {
  runApp(
    const FloatingActionButtonExample(),
  );
}

class FloatingActionButtonExample extends StatelessWidget {
  const FloatingActionButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: const FabExample(),
    );
  }
}
