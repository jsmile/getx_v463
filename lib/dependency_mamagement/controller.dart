import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/utils/ansi_color.dart';

class Controller extends GetxController {
  // reactive 변수 선언
  final count = 0.obs;

  void increment() {
    count.value++; // final reactive 변수의 값 변경은 .value 로 접근하여 변경
  }

  void clearCount() {
    debugPrint(info('### clearCount()'));

    count.value = 0;
  }

  @override
  void onInit() {
    super.onInit();
    // called immediately after the widget is allocated in memory
    debugPrint(info('### Controller onInit() is called'));
  }

  @override
  void onReady() {
    super.onReady();
    // called after the widget is rendered on screen
    debugPrint(info('### Controller onReady() is called'));
  }

  @override
  void onClose() {
    // called just before the Controller is deleted from memory
    debugPrint(info('### Controller onClose() is called'));
    super.onClose();
  }
}
