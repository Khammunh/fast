import 'package:flutter/material.dart';

import 'demoIconToggleButtons.dart';

void main() {
  runApp(
    const IconButtonToggleApp(),
  );
}

class IconButtonToggleApp extends StatelessWidget {
  const IconButtonToggleApp({super.key});

  @override
  Widget build(BuildContext context) {
    const titleIcon = 'Icon Button Type';
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed:const Color(0xff6750a4),
        useMaterial3: true
      ),
   
      home:  Scaffold(
        appBar: AppBar(title:const Text(titleIcon),),
        body:const DemoIconToggleButtons(),
      ),
    );
  }
}