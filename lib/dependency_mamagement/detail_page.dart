import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/ansi_color.dart';
import './controller.dart';
import './classes.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  // 호출하는 widget 으로부터 전달받은 Controller 구하기
  final controller = Get.find<Controller>();
  // Controller controller = Get.find();
  // final controller2 = Get.find<Controller>();
  // final child = Get.find<Parent>();

  @override
  Widget build(BuildContext context) {
    // debugPrint(info('### is Child?  ${child is Child}'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reactive State Management
            Obx(
              () => Text(
                '${controller.count.value}', // 수정이 아닌 조회 시에는 .value 사용
                style: const TextStyle(fontSize: 30),
              ),
            ),
            // Obx(
            //   () => Text(
            //     '${controller2.count.value}', // 수정이 아닌 조회 시에는 .value 사용
            //     style: const TextStyle(fontSize: 30),
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        // onPressed: () => Get.find<Controller>().increment(),
        // onPressed: () => Get.find<Controller>(tag: 'uniqueId').increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
