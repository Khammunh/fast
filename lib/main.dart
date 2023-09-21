import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final items = List<String>.generate(20, (i) => 'Item ${i+1}');
  @override
  Widget build(BuildContext context) {
    const title = 'Data List';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ,
      ),
    );
  }
}

