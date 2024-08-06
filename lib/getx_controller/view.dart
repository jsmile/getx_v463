import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controller.dart';
// import './detail_page.dart';

class GetXControllerView extends StatelessWidget {
  const GetXControllerView({super.key});

  @override
  Widget build(BuildContext context) {
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
              // Reactive State Management
              GetX<Controller>(
                init: Controller(), // Gex.put( ... ) 없이 init 으로 초기화 가능
                builder: (controller) => Text(
                  '${controller.count.value}',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              // Obx(
              //   () => Text(
              //     '${controller.count.value}', // 수정이 아닌 조회 시에는 .value 사용
              //     style: const TextStyle(fontSize: 30),
              //   ),
              // ),
              // // Simple State Management
              // GetBuilder<Controller>(
              //   init: Controller(),
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
      ),
    );
  }
}
