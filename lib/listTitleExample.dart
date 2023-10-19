// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListTitleExample extends StatefulWidget {
  const ListTitleExample({super.key});

  @override
  State<ListTitleExample> createState() => _ListTitleExampleState();
}

class _ListTitleExampleState extends State<ListTitleExample>
    with TickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final AnimationController _sizeController;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..repeat(reverse: true);
    _sizeController = AnimationController(
        duration: const Duration(milliseconds: 860), vsync: this)
      ..repeat(reverse: true);
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );
    _sizeAnimation = CurvedAnimation(
      parent: _sizeAnimation,
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
