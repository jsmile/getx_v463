import 'package:get/get.dart';

class Controller extends GetxController {
  // reactive 변수 선언
  final count = 0.obs;
  // var count = 0.obs; // var 로 선언해도 됨

  // // normal 변수 선언
  // int count = 0;

  void increment() {
    count.value++; // final reactive 변수의 값 변경은 .value 로 접근하여 변경
    // count++; // var 로 선언한 경우는 .value 없이 변경 가능
    // // update();  // GetX<Controller>( ... ) 사용 시 update() 없이도 UI 가 변경됨

    // update([ count ]);                 // 특정 변수만 UI 변경
    // update([ 'count1' ], count < 10);  // 특정 조건에 따라 UI 변경
  }
}
