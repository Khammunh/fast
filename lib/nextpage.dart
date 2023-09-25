import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Title(
        color: Colors.green,
        child: const Text('Welcome Navigator 2'),
      ),
    );
  }
}
