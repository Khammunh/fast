// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FabExample extends StatelessWidget {
  const FabExample({super.key});

  @override
  Widget build(BuildContext context) {
    const floatingText = 'FloatingActionButton Sample';
    return Scaffold(
      appBar: AppBar(
        title: const Text(floatingText),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Small'),
                const SizedBox(
                  width: 16,
                ),
                FloatingActionButton.small(
                  onPressed: () {
                    //
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Regular'),
                const SizedBox(
                  width: 16,
                ),
                FloatingActionButton(
                  onPressed: () {
                    //
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Large'),
                const SizedBox(
                  width: 16,
                ),
                FloatingActionButton.large(
                  onPressed: () {
                    //
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Extended'),
                const SizedBox(
                  width: 16,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    //
                  },
                  label: const Text('Add'),
                  icon: const Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
