import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'service_view.dart';

class ServiceExample extends StatelessWidget {
  const ServiceExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: ServiceView(),
    );
  }
}
