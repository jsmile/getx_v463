import 'package:get/get.dart';

class SimpleStateController extends GetxController {
  // with static method :  SimpleStateController.to.increment()
  // with no static method :  Get.find<SimpleStateController>().increment()
  static SimpleStateController get to => Get.find<SimpleStateController>();

  int counter = 0;
  // final name = 'Ruize'.obs;    // GetX<Controller> 사용 시 필요

  increment() {
    counter++;

    // 수정사항을 UI 에 반영하기 위해 update() 호출 : GetxController 내에서만 사용
    update();
  }
}
