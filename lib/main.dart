import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_alert),
            ),
          ],
          title: const Text('Top 35 Flutter Widget'),
        ),
        body: Center(
          child: Stepper(
            steps:  [
              Step(
                isActive: _currentStep ==0,
                title: const Text('Step 1'),
                content: const Text('Information for step 1'),
              ),
               Step(
                isActive: _currentStep == 1,
                title:const Text('Step 2'),
                content:const Text('Information for step 2',),
              ),
               Step(
                isActive: _currentStep == 2,
                title: const Text('Step 3'),
                content: const Text('Information for step 3',style: TextStyle(color: Colors.blue),),
              ),
            ],
            onStepTapped: (int newIndex) {
              setState(() {
                _currentStep = newIndex;
              });
            },
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep != 2) {
                setState(() {
                  _currentStep += 1;
                });
              }
            },
            onStepCancel: () {
              if (_currentStep != 0) {
                setState(() {
                  _currentStep -= 1;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
