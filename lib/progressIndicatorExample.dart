// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ProgressIndicatorExampleApp extends StatefulWidget {
  const ProgressIndicatorExampleApp({super.key});

  @override
  State<ProgressIndicatorExampleApp> createState() =>
      _ProgressIndicatorExampleAppState();
}

class _ProgressIndicatorExampleAppState
    extends State<ProgressIndicatorExampleApp> with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = false;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
        controller.repeat();
        super.initState();
      });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Linear progress indictor',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 30),
          CircularProgressIndicator(
            value: controller.value,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  'determinate Mode',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Switch(
                  value: determinate,
                  onChanged: (bool value) {
                    setState(() {
                      determinate = value;
                      if (determinate) {
                        controller.stop();
                      } else {
                        controller
                          ..forward(from: controller.value)
                          ..repeat();
                      }
                    });
                  })
            ],
          )
        ],
      ),
    ));
  }
}
