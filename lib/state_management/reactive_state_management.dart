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

  // // Custom Class
  // final user = Rx<User>( User( name:'Ruize', age: 30 ) );

  // The third is more practical, easier and preferred approach.
  final name = ''.obs;
  final isLoaded = false.obs;
  final count = 0.obs;
  final balance = 0.0.obs;
  final items = <String>[].obs;
  final myMap = <String, int>{}.obs;

  // Custom Class
  final user = User(name: 'Ruize', age: 30).obs;
  // // Atribute inside User class is observer
  // final user = User();

  void increment() => count.value++;
  void toUpper() {
    // // Atribute inside User class is observer
    // user.name.value = user.name.value.toUpperCase();
    // user.age.value++;

    // // Entire User class is observer
    // // 1. using update() method
    // user.update((user) {
    //   user!.name = user.name.toUpperCase();
    //   user.age++;
    // });

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
                  '${count.value}',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              // Obx(
              //   () => Text(
              //     '${user.value.name} ${user().age}',
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
      ),
    );
  }
}
