import 'package:fast/nextscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/detail': (context) => const NextScreen(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Navigator & Router';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/detail');
          },
          child: const Text('Launch Navigator'),
        ),
      ),
    );
  }
}
