import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './simple_state_controller.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<SimpleStateController>(
                init: SimpleStateController(),
                builder: builder,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
