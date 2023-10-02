import 'package:flutter/material.dart';

void main() {
  runApp(
    const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Returning Dat Demo';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
      ),
    );
  }
}
