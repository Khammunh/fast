// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ButtonSheetExample extends StatelessWidget {
  const ButtonSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'ButtonSheet';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Modal Button Sheet'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 400,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('close'),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
