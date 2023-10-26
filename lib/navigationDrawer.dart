// ignore_for_file: file_names

import 'package:fast/model/class_data.dart';
import 'package:flutter/material.dart';

class NavigationDrawerExample extends StatefulWidget {
  const NavigationDrawerExample({super.key});

  @override
  State<NavigationDrawerExample> createState() =>
      _NavigationDrawerExampleState();
}

class _NavigationDrawerExampleState extends State<NavigationDrawerExample> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int screenIndex = 0;
  late bool showNavigationDrawer;
  void handleScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('Page Index = $screenIndex')],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: screenIndex,
        onDestinationSelected: (int index) {
          setState(() {
            screenIndex = index;
          });
        },
        destinations: destinations.map((ExampleDestination destination) {
          return NavigationDestination(
            icon: destination.icon,
            label: destination.label,
            selectedIcon: destination.selectedIcon,
            tooltip: destination.label,
          );
        }).toList(),
      ),
    );
  }
}

Widget buildDrawerScaffold(BuildContext context){
  
}