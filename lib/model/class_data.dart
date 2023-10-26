import 'package:flutter/material.dart';

class ExampleDestination {
  final String label;
  final Widget icon;
  final Widget selectedIcon;
  const ExampleDestination(
    this.label,
    this.icon,
    this.selectedIcon,
  );
}

const List<ExampleDestination> destinations = <ExampleDestination>[
  ExampleDestination(
    'page 0',
    Icon(Icons.widgets_outlined),
    Icon(
      Icons.widgets,
    ),
  ),
  ExampleDestination(
    'page 1',
    Icon(Icons.format_paint_outlined),
    Icon(
      Icons.format_paint,
    ),
  ),
  ExampleDestination(
    'page 2',
    Icon(Icons.text_snippet_outlined),
    Icon(
      Icons.text_snippet,
    ),
  ),
  ExampleDestination(
    'page 3',
    Icon(Icons.invert_colors_off_outlined),
    Icon(
      Icons.opacity,
    ),
  ),
];
