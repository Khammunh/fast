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
      debugShowCheckedModeBanner: false,
      home: const ListTitleExample(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}

class ListTitleExample extends StatelessWidget {
  const ListTitleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTitle Sample'),
      ),
      body: ListView(
        children:const [
          Card(
            child: ListTile(
              title: Text('One-line ListTitle'),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('One-line with leading widget'),
            ),
          ),
          //Now tomorrow learn Card(more_vert) again.
        ],
      ),
    );
  }
}
