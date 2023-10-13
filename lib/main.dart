import 'package:flutter/material.dart';

import 'snackBarExample.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SnackBar"),
        ),
        body: const Center(
          child: SnackBarExample(),
        ),
      ),
    );
  }
}
