import 'package:fast/listTitleExample.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        listTileTheme: const ListTileThemeData(
          textColor: Colors.white
        ),
        useMaterial3: true
      ),
      home: const ListTitleExample(),
    );
  }
}