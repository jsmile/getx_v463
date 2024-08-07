import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './binding.dart';
import './classes.dart';
import './controller.dart';
import './detail_page.dart';

class DepnedencyView extends StatelessWidget {
  const DepnedencyView({super.key});

  // Singleton, one instance share with entire app.
  // // Controller constroller = Controller();
  // final controller = Get.put(Controller()); // Get.put() :  Singleton instance

  // // specific the type of Controller
  // final parent = Get.put<Parent>(Parent());
  // // final child = Get.put<Parent>(Child());      // 이후에 선언된 Child() 는 무시됨
  // final child = Get.replace<Parent>(Child()); // 앞의 Parent() 를 Child() 로 대체시킴.
  // // final child = Get.lazyReplace<Parent>( () => child() );

  // final controller2 = Get.put(Controller()); // Get.put() :  Singleton instance
  // // not singleton instance but multiple instances by tag:
  // final controller2 = Get.put(
  //   Controller(),
  //   // multiple classes that are of the same type
  //   // using Get.find<Controller>() with unique id
  //   tag: 'uniqueId',
  //   // keep instance throughout the entire app.
  //   // permanent: false,
  // );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: DetailsBinding(),
      getPages: [
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
          // Binding 사용방법 1 :  호출하는 Wiget 에 Controller 전달을 위한 binding
          // binding: DetailBinding(),

          // Binding 사용방법 3 :  Binding 클래스 생성없이 BindingsBuilder( ... ) 사용하기
          // Controller 를 직접 전달함.
          binding: BindingsBuilder(() {
            // LazyLoad a dependency only when it is used.
            Get.lazyPut<Controller>(() => Controller());
            // Get.lazyPut<Controller>(
            //   // method will be excuted when your class
            //   () => Controller(),
            //   // same as Get.put()
            //   tag: 'uniqueId for lazyPut',
            //   // It is smilar to 'Permanent'
            //   // delete() 시에도 메모리에 유지시켰다가 재 호출 시 빠른 생성여부 결정.
            //   fenix: false,
            // );

            //   // Get.putAsync<AsyncTask>(
            //   //   () async {
            //   //     await Future.delayed(const Duration(seconds: 3)); // 3초 대기
            //   //     return AsyncTask(); // async 작업 수행
            //   //   },
            //   //   // using Get.find<Controller>() with unique id
            //   //   tag: 'uniqueId for putAsync',
            //   //   // kept instance throughout the entire app.
            //   //   permanent: false,
            //   // );

            //   // Create new instance every time, not Singleton instance
            //   Get.create<Controller>(
            //     // a function that returns a class
            //     () => Controller(),
            //     // tag: 'uniqueId for create',
            //     permanent: true,
            //   );
            //   Get.create<Controller>(
            //     // a function that returns a class
            //     () => Controller(),
            //     // tag: 'uniqueId for create',
            //     permanent: true,
            //   );
          }),
        ),
      ],

      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Dependency Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // // Reactive State Management
              // Obx(
              //   () => Text(
              //     '${controller.count.value}', // 수정이 아닌 조회 시에는 .value 사용
              //     style: const TextStyle(fontSize: 30),
              //   ),
              // ),
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
              ElevatedButton(
                // onPressed: () => Get.to(
                //   () => DetailPage(),
                //   // Binding 사용방법 2 : Get.to( ..., binding: ... ) 으로 Controller 전달
                //   binding: DetailBinding(),
                // ),
                onPressed: () => Get.toNamed(
                  '/detail',
                ),
                child: const Text('Detail Page'),
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   // onPressed: () => Get.find<Controller>().increment(),
        //   onPressed: () => Get.find<Controller>(tag: 'uniqueId').increment(),
        //   // onPressed: () => controller.increment(),
        //   child: const Icon(Icons.add),
        // ),
      ),
    );
  }
}
