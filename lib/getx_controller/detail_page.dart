import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/getx_controller/controller.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Controller Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // // Reactive State Management
            // GetX<Controller>(
            //   init: Controller(), // Gex.put( ... ) 없이 init 으로 초기화 가능
            //   builder: (controller) => Text(
            //     '${controller.count.value}',
            //     style: const TextStyle(fontSize: 30),
            //   ),
            // ),
            // // Get.put( <Controller 생성자>) 를 통해서 GetXController 를 받아서 사용함.
            // Obx(
            //   () => Text(
            //     '${controller.count.value}', // 수정이 아닌 조회 시에는 .value 사용
            //     style: const TextStyle(fontSize: 30),
            //   ),
            // ),
            // Simple State Management : 일반 var 을 대상으로 동작함.
            GetBuilder<Controller>(
              id: 'count1',
              init: Controller(),
              builder: (controller) => Text(
                '${controller.count}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            // GetBuilder<Controller>(
            //   id: 'count2',
            //   builder: (controller) => Text(
            //     '${controller.count}',
            //     style: const TextStyle(fontSize: 30),
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () => Get.to(
            //     () => const DetailPage(),
            //   ),
            //   child: const Text('Detail Page'),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<Controller>().increment(),
        // onPressed: () => controller.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
