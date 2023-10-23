// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  bool _selected = false;
  bool _enabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Sample'),
      ),
      body: Center(
        child: ListTile(
          enabled: _enabled,
          selected: _selected,
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          iconColor:
              MaterialStateColor.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.red;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.green;
            }
            return Colors.black;
          }),
          leading: const Icon(Icons.person),
          title: const Text('Headline'),
          subtitle: Text('Enabled: $_enabled, Selected: $_selected'),
          trailing: Switch(
              value: _enabled,
              onChanged: (bool? value) {
                setState(() {
                  _enabled = value!;
                });
              }),
        ),
      ),
    );
  }
}
