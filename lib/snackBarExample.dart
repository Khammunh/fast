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
            content: const Text('Awesome SnackBar'),
            action: SnackBarAction(label: 'Action', onPressed: (){
              
            }),
          ),
        );
      },
      child: const Text('Show SnackBar'),
    );
  }
}
