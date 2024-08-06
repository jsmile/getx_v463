import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/utils/ansi_color.dart';

class Controller extends GetxController {
  // // reactive 변수 선언
  // final count = 0.obs;

  // normal 변수 선언 : GetBuilder<ControllerT> 작업에서 사용됨.
  int count = 0;

  void increment() {
    // count.value++; // final reactive 변수의 값 변경은 .value 로 접근하여 변경
    count++; // normal 변수의 값 변경은 직접 변경
    update(); // UI 반영 but GetX<Controller>( ... ) 사용 시 update() 없이도 UI 가 변경됨

    // update(['count1']); // 해당 id 의 GetBuilder 의 Controller 변수들만 UI 변경
    // update([ 'count1' ], count < 10);  // 특정 조건에 따라 해당 해당 GetBuilder 의 UI 변경
  }

  void clearCount() {
    debugPrint(info('### clearCount()'));

    // count.value = 0;
    count = 0; // normal 변수의 값 변경은 직접 변경
    update(); // UI 반영 but GetX<Controller>( ... ) 사용 시 update() 없이도 UI 가 변경됨
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint(info('### Controller onInit()'));

    // // 단일 observer 변수의 변경 시마다 호출됨.
    // ever(count, (_) => debugPrint(info('### $_ has been changed')));
    // // 복수개의 observer 변수들이 변할 때마다 호출됨.
    // everAll([count], (_) => debugPrint(info('### $_ has been changed')));

    // // $_ 변수가 최초 변경 시에만 호출됨.
    // once(count, (_) => debugPrint(info('### $_ has been changed')));

    // // 사용자가 Duration() 동안에 마지막으로 입력( 수정 )된 것만을 반영함.
    // debounce(
    //   count,
    //   (_) => debugPrint(info('### debounce $_')),
    //   time: const Duration(microseconds: 1000),
    // );

    // // Duration() 동안 입력( 수정 )된 모든 입력( 변경 )들을 무시함.
    // interval(
    //   count,
    //   (_) => debugPrint(info('### interval $_')),
    //   time: const Duration(milliseconds: 1000),
    // );
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint(info('### Controller onReady()'));
  }

  @override
  void onClose() {
    debugPrint(info('### Controller onClose()'));
    clearCount();
    super.onClose();
  }
}
