import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user.dart';

class ReactiveStateManagement extends StatelessWidget {
  ReactiveStateManagement({Key? key}) : super(key: key);

  // // The first is using RxType
  // // Initial value is recommanded, but not mandatary.
  // final name = RxString('');
  // final isLoaded = RxBool(false);
  // final count = RxInt(0);
  // final balance = RxDouble(0.0);
  // final items = RxList<String>( [] );
  // final myMap = RxMap<String, int>( {} );

  // The Second is using Rx<Type>
  // // final name = Rx<String>('');
  // final isLoaded = Rx<bool>(false);
  // final count = Rx<int>(0);
  // final balance = Rx<double>(0.0);
  // final items = Rx<List<String>>( [] );
  // final myMap = Rx<Map<String, int>>( {} );

  // // Custom Class - It can be any class
  // final user = Rx<User>( User( name:'Ruize', age: 30 ) );

  // The third is more practical, easier and preferred approach.
  final name = ''.obs;
  final isLoaded = false.obs;
  final count = 0.obs;
  final balance = 0.0.obs;
  final items = <String>[].obs;
  final myMap = <String, int>{}.obs;

  // Custom Class - observer class( 일반 속성인 class 는 .obs 와 함께 선언해야 함. )
  final user = User(name: 'Ruize', age: 30).obs;

  // // class 의 속성들이 observer 인 경우 .obs 없이 선언
  // final user = User();

  void increment() => count.value++;
  void toUpper() {
    // // 3. class 의 속성들이 observer 인 경우 .value 를 사용하여 접근하고 수정 가능
    // user.name.value = user.name.value.toUpperCase();
    // user.age.value++;

    // 속성이 아닌 class 가 observer 인 경우 속성 수정 시 .update() 메소드 사용 필요
    // 1. using update() method
    user.update((user) {
      // user :  observable object
      // .update() 내에서는 .value 를 추가적으로 사용할 필요가 없음.
      user!.name = user.name.toUpperCase(); // observer 는 직접 수정은 불가하고.
      user.age = user.age + 1; // 수정한 내용을 다시 할당해야 함
      // 또는 user.age = user.age++;  // user 만이 observer 이므로 user.age++ 는 적용되지 않음
    });

    // // 2. An Alternative way of updating the user variable
    // user( User( name: 'RUZIE' ) );
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Reactive State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  '${count.value}', // 수정이 아닌 조회 시에는 .value 사용
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              // Obx(
              //   () => Text(
              //      // class 가 observer 인 경우 class 뒤에 .value 사용하여 접근
              //     '${user.value.name} ${user().age}',
              //     style: const TextStyle(fontSize: 30),
              //   ),
              // ),
              // Obx(
              //   () => Text(
              //     // class 의 속성들이 observer 인 경우 속성 뒤에 .value 를 사용하여 접근
              //     '${user.name.value} ${user.age.value}',
              //     style: const TextStyle(fontSize: 30),
              //   ),
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => increment(),
          child: const Icon(Icons.add),
        ),
        // Attributes inside User class are observers
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => toUpper(),
        //   child: const Icon(Icons.arrow_upward),
        // ),
      ),
    );
  }
}
