import 'package:get/get.dart';

import './classes.dart';
import './controller.dart';

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    // LazyLoad a dependency only when it is used.
    Get.lazyPut<Controller>(() => Controller());
    // Get.lazyPut<Controller>(
    //   // method will be executed when your class is
    //   () => Controller(),
    //   // same as Get.put()
    //   tag: 'uniqueId for lazyPut',
    //   // It is smilar to 'Permanent'
    //   // recreate the instance from 'same place'
    //   // if set to true, it will stay in the mamory
    //   fenix: false,
    // );

    // // an async mehtod that will be excuted to instanciate
    // Get.putASync<AsyncTask>(
    //   () async {
    //     await Future.delayed(const Duration(seconds: 3));
    //     return AsyncTask();
    //   },
    //   // using Get.find<Controller>() with unique id
    //   tag: 'uniqueId for putAsync',
    //   // kept instance throughout the entire app.
    //   permanent: false,
    // );

    // // create new instance every time, not Singleton
    // Get.create<Controller>(
    //   // a function that returns a class
    //   () => Controller(),
    //   tag: 'uniqueId for create',
    //   permanent: true,
    // );
  }
}
