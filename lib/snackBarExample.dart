// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {},
            ),
            content: const Text('Awesome SnackBar'),
            duration: const Duration(milliseconds: 1500),
            width: 280.0,
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0
            ),
            behavior: SnackBarBehavior.floating,shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
        );
      },
      child: const Text('Show SnackBar'),
    );
  }
}
