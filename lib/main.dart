import 'package:flutter/material.dart';

void main() {
  runApp(
    const SegmentedButtonApp(),
  );
}

class SegmentedButtonApp extends StatelessWidget {
  const SegmentedButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SegmentedButtonApp'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text('Single choice')
            ],
          ),
        ),
      ),
    );
  }
}
