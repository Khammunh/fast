import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Oeschinen Lake Compground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      Text(
        'Kandersteg, switzerland',
        style: TextStyle(
          color: Colors.grey[500],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41')
    ],
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
