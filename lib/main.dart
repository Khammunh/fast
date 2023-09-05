import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const Color darkBlue = Color.Color.fromARGB(255, 18, 32, 47);

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
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,home: const Scaffold(
        body: Center(
          child: ,
        ),
      ),
    );
  }
}
