import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_v463/getx_service/settings_service.dart';

class ServiceView extends StatelessWidget {
  ServiceView({super.key});

  final controller = Get.find<SettingsService>();

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
            Text(
              'Pressed ${controller.counter} times',
              style: const TextStyle(
                fontSize: 28,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
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
