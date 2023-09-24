import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Focus Widget';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyCustomWidget(),
          ],
        ),
      ),
    );
  }
}

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({super.key});

  @override
  State<MyCustomWidget> createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Image.network('https://laosoftware-1b318.web.app/assets/gif/web.gif');
  }
}
