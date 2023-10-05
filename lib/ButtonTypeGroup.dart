// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ButtonTypeGroup extends StatelessWidget {
  const ButtonTypeGroup({
    super.key,
    required this.enabled,
  });
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: onPressed,
            child: const Text('Elevated'),
          ),
          FilledButton(
            onPressed: onPressed,
            child: const Text('Filled'),
          ),
          FilledButton.tonal(
            onPressed: onPressed,
            child: const Text('Filled Tonal'),
          ),
          OutlinedButton(
            onPressed: onPressed,
            child: const Text('Outlined'),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text('TextButton'),
          ),
        ],
      ),
    );

  }
}
