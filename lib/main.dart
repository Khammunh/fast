import 'package:flutter/cupertino.dart';
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
    int currentPageIndex = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Bar'),
        ),
        body: const Center(
          child: Text('Navigation Bar Example'),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
           
          },
          animationDuration:const Duration(microseconds: 1000),
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}
