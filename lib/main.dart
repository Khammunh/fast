import 'package:flutter/material.dart';

void main() {
  runApp(
    MyHomePage(
      item: List<String>.generate(10, (i) => 'item $i'),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
    required this.item,
  });
  final List<String> item;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List Again'),
        ),
        body: ListView.builder(
            itemCount: item.length,
            prototypeItem: ListTile(
              title: Text(
                item.first,
              ),
            ),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(item[index]),
              );
            }),
      ),
    );
  }
}
