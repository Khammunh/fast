// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBar Demo'),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('This is a snackBar'),
                ),
              );
            },
            tooltip: 'Show SnackBar',
            icon: const Icon(
              Icons.add_alert,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Next Page'),
                  ),
                  body: const Center(
                    child: Text(
                      'This is the next page',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                );
              }));
            },
            tooltip: 'Go to the next page',
            icon: const Icon(Icons.navigate_next),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is home page ',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
