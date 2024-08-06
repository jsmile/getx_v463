import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './simple_state_controller.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    // // GetBuilder() 없이 GetxController 사용 시 Get.put( <controller 클래스 생성자> ) 로 선언
    // Get.put(SimpleStateController());

    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // On your Stateless/Stateful widget, use GetBuilder()
              // GetBuilder<T> : controller 클래스에 일반 속성만 선언되어 있는 경우에 사용가능
              GetBuilder<SimpleStateController>(
                // Init it only the first time
                init: SimpleStateController(),
                builder: (controller) => Text(
                  '${controller.counter}',
                  // '${SimpleStateController.to.counter}',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              // // GetX<T> : controller 클래스에 oberver 속성이 선언되어 있는 경우에 사용가능
              // GetX<SimpleStateController>(
              //   builder: (controller) => Text(
              //     controller.name.value,
              //     style: const TextStyle(fontSize: 30),
              //   ),
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // onPressed: () => SimpleStateController.to.increment(),
          // Get.find<T>() :  직접 호출 가능
          onPressed: () => Get.find<SimpleStateController>().increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
