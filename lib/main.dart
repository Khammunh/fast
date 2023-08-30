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
      title: 'again Grid List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid List'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            100,
            (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
