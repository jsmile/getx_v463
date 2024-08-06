import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controller.dart';
import './detail_page.dart';

class GetXControllerView extends StatelessWidget {
  const GetXControllerView({super.key});

  @override
  Widget build(BuildContext context) {
    // 단순한 Obx(...) 에서 GetXController 를 사용하기 위해 선언함.
    // final controller = Get.put(Controller());

    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GetX<Controller>() State Management',
            style: TextStyle(fontSize: 22),
          ),
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
              ElevatedButton(
                onPressed: () => Get.to(
                  () => DetailPage(),
                ),
                child: const Text('Detail Page'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.find<Controller>().increment(),
          // onPressed: () => controller.increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
