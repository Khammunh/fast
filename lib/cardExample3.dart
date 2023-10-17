// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardExample3 extends StatelessWidget {
  const CardExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(
            child: Text('Card Example 3'),
          ),
        ),
      ),
    );
  }
}
