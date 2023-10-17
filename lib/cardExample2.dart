// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardExample2 extends StatelessWidget {
  const CardExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 300,height: 100,child: Center(
            child: Text('Card Example 2'),
          ),
        ),
      ),
    );
  }
}
