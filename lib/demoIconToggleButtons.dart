// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DemoIconToggleButtons extends StatefulWidget {
  const DemoIconToggleButtons({super.key});

  @override
  State<DemoIconToggleButtons> createState() => _DemoIconToggleButtonsState();
}

class _DemoIconToggleButtonsState extends State<DemoIconToggleButtons> {
  bool standardSelected = false;
  bool filledSelected = false;
  bool tonalSelected = false;
  bool outlinedSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              isSelected: standardSelected,
              onPressed: () {
                setState(() {
                  standardSelected = !standardSelected;
                });
              },
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {
                null;
              },
              icon: const Icon(Icons.settings_outlined),
              isSelected: standardSelected,
              selectedIcon: const Icon(Icons.settings),
            ),
          ],
        )
      ],
    );
  }
}
