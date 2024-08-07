import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './binding.dart';
import './classes.dart';
import './controller.dart';
import './detail_page.dart';

class DepnedencyView extends StatelessWidget {
  DepnedencyView({super.key});

  // Singleton, one instance share with entire app.
  // Controller constroller = Controller();
  final controller = Get.put(Controller()); // Get.put() :  Singleton instance

  // specific type of Controller
  // final parent = Get.put<Parent>( Parent() );
  // final child = Get.put<Parent>( child() );
  // final child = Get.replace<Parent>( child() );
  // final child = Get.lazyReplace<Parent>( () => child() );

  // final controller2 = Get.put( Controller() );
  // final controller2 = Get.put(
  //   Controller(),
  //   // multiple classes that are of the same type
  //   // using Get.find<Controller>() with unique id
  //   tag: 'uniqueId',
  //   // keep instance throughout the entire app.
  //   permanent: false,
  // );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: DetailsBinding(),
      // getPages: [
      //   GetPage(
      //     name: '/detail',
      //     page: () => const DetailPage(),
      //     // binding: DetailsBinding(),
      //     binding: BindingsBuilder(
      //       // LazyLoad a dependency only when it is used.
      //       ( ) {
      //         Get.lazyPut<Controller>( () => Controller() );
      //         // Get.lazyPut<Controller>(
      //         //   // method will be excuted when you
      //         //   () => Controller(),
      //         //   // same as Get.put()
      //         //   tag: 'uniqueId for lazyPut',
      //         //   // It is smilar to 'Permanent'
      //         //   // recreate the instance from 'same place'
      //         //   fenix: false,
      //         // );
      //       }
      //     ),

      //   ),
      // ],

      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Dependency Management'),
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
              // // Simple State Management : 일반 var 을 대상으로 동작함.
              // GetBuilder<Controller>(
              //   id: 'count1',
              //   init: Controller(),
              //   builder: (controller) => Text(
              //     '${controller.count}',
              //     style: const TextStyle(fontSize: 30),
              //   ),
              // ),
              // GetBuilder<Controller>(
              //   id: 'count2',
              //   builder: (controller) => Text(
              //     '${controller.count}',
              //     style: const TextStyle(fontSize: 30),
              //   ),
              // ),
              // ElevatedButton(
              //   // onPressed: () => Get.to(
              //   //   () => DetailPage(),
              //   // ),
              //   onPressed: () => Get.toNamed(
              //     '/detail',
              //   ),
              //   child: const Text('Detail Page'),
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.find<Controller>().increment(),
          // onPressed: () => Get.find<Controller>( tag: 'uniqueId' ).increment(),
          // onPressed: () => controller.increment(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
