// ignore_for_file: file_names

import 'package:fast/ButtonTypeGroup.dart';
import 'package:flutter/material.dart';

class ButtonTypesExample extends StatelessWidget {
  const ButtonTypesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          Spacer(),
          ButtonTypeGroup(enabled: true),
          ButtonTypeGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}
