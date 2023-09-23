// ignore_for_file: non_constant_identifier_names, unused_element, avoid_print

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
    const title = 'Handle Change TextField';
    return const MaterialApp(
      title: title,
      home: MyHomePage(
        title: title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _printLatesValue() {
    final text = MyController.text;
    print(
      'Second text field: $text(${text.characters.length},)',
    );
  }

  final MyController = TextEditingController();
  @override
  void dispose() {
    MyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 10,
            ),
            child: TextField(
              controller: MyController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a Search Term'),
            ),
          ),
        ],
      ),
    );
  }
}
