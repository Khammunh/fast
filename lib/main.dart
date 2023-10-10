// ignore_for_file: non_constant_identifier_names, unused_element

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
      theme: ThemeData(primaryColor: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buttonNavigationBar(),
      body: const Padding(
        padding: EdgeInsets.all(2.0),
        child: Row(
          children: [Text('Home'),],
        ),
      ),
    );
  }
}

// Widget _bottomNavigationBar() {
//   BottomNavigationBar(items: )
// }
Widget _buttonNavigationBar() {
  return NavigationBar(
    destinations: const [
      NavigationDestination(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      NavigationDestination(
        icon: Icon(Icons.chat),
        label: 'Chat',
      ),
      NavigationDestination(
        icon: Icon(Icons.chat),
        label: 'Chat',
      ),
      
    ],
  animationDuration: Duration(ms:2000),
  );
}
