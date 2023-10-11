import 'package:flutter/material.dart';

import 'progressIndicatorExample.dart';

void main() {
  runApp(
    const ProgressIndicatorApp(),
  );
}

class ProgressIndicatorApp extends StatelessWidget {
  const ProgressIndicatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProgressIndicatorExample(),
    );
  }
}