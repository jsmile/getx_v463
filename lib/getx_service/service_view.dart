import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_v463/getx_service/settings_service.dart';

// class ServiceView extends StatelessWidget {
// GetView<ControllerT> 를 별도의 Get.find<ControllerT>() 없이도 사용가능하게 함.
// controller 속성을 통해 컨트롤러의 메서드와 변수에 쉽게 접근
class ServiceView extends GetView<SettingsService> {
  const ServiceView({super.key});
  // ServiceView({super.key});

  // final controller = Get.find<SettingsService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Service'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Pressed ${controller.counter} times',
                style: const TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await controller.incrementCounter();
              },
              child: const Text(
                'Increase',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
