import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_v463/navigation/next_screen.dart';
import 'package:getx_v463/utils/ansi_color.dart';

class GetNavigation extends StatelessWidget {
  const GetNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      // unknownRoute: GetPage(name: '/notfound', page: () => UnknownScreen()),
      getPages: [
        GetPage(name: '/', page: () => const GetNavigation()),
        GetPage(
            name: '/next', page: () => const NextScreen()), // ?id=123 방식으로 사용가능
        GetPage(name: '/next/:id', page: () => const NextScreen()),
      ],
      // If you want to listen Get Events to trigger events
      // you can to use routingCallback to it.
      routingCallback: (routing) {
        if (routing!.current == '/next') {
          debugPrint(info('### NextScreen is opened'));
        }
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  // to navigate to a new screen
                  await Get.to(
                    // using widget function instead of a widget
                    // fully generatees that the widget and controllers
                    // will be removed from memory when they are no longer used.
                    () => const NextScreen(),
                    // transaction: Transaction.rightToLeft,
                    // duration: const Duration( seconds: 1 ),
                    // curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    arguments: 'Hello World from Get.to()',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[500],
                  foregroundColor: Colors.white,
                ),
                child: const Text('Get.to( NextScreen() )'),
              ),
              ElevatedButton(
                onPressed: () async {
                  // to navigate to a new screen
                  await Get.off(
                    // using widget function instead of widget class
                    () => const NextScreen(),
                    // transaction: Transaction.rightToLeft,
                    // duration: const Duration( seconds: 1 ),
                    // curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    arguments: 'Hello World from Get.off()',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[500],
                  foregroundColor: Colors.white,
                ),
                child: const Text('Get.off( NextScreen() )'),
              ),
              ElevatedButton(
                onPressed: () async {
                  // to navigate to a new screen
                  await Get.toNamed(
                    '/next',
                    // transaction: Transaction.rightToLeft,
                    // duration: const Duration( seconds: 1 ),
                    // curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    arguments: 'Hello World from Get.toNamed( /next )',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[500],
                  foregroundColor: Colors.white,
                ),
                child: const Text("Get.toNamed( '/next' )"),
              ),
              ElevatedButton(
                onPressed: () async {
                  // to navigate to a new screen
                  await Get.toNamed(
                    '/next?id=123&name=Tom', // Get.parameters[ 'id' ] 로 param 을 받아 사용
                    // transaction: Transaction.rightToLeft,
                    // duration: const Duration( seconds: 1 ),
                    // curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    arguments:
                        'Hello World from Get.toNamed( /next?id=123&name=Tom )',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[500],
                  foregroundColor: Colors.white,
                ),
                child: const Text("Get.toNamed( '/next?id=123&name=Tom' )"),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Map<String, String> 형식으로 parameter 전달
                  var parameters = <String, String>{
                    'id': '123',
                    'name': 'Tom',
                  };
                  await Get.toNamed(
                    '/next', // Get.parameters[ 'id' ] 로 param 을 받아 사용
                    // transaction: Transaction.rightToLeft,
                    // duration: const Duration( seconds: 1 ),
                    // curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    parameters: parameters,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[500],
                  foregroundColor: Colors.white,
                ),
                child: const Text("Get.toNamed( '/next' + parameters )"),
              ),
              ElevatedButton(
                onPressed: () async {
                  // to navigate to a new screen
                  await Get.toNamed(
                    '/next/123', // GetPage(name: '/next/:id',...) 에 대응함.
                    // transaction: Transaction.rightToLeft,
                    // duration: const Duration( seconds: 1 ),
                    // curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    arguments: 'Hello World from Get.toNamed( /next/123 )',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[500],
                  foregroundColor: Colors.white,
                ),
                child: const Text("Get.toNamed( '/next/123' )"),
              ),
              ElevatedButton(
                onPressed: () async {
                  // to navigate to a new screen
                  await Get.offNamed(
                    '/next',
                    // transaction: Transaction.rightToLeft,
                    // duration: const Duration( seconds: 1 ),
                    // curve: Curves.easeInOut,
                    // https://api.flutter.dev/flutter/animation/Curves-class.html
                    arguments: 'Hello World from Get.offNamed( /next )',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[500],
                  foregroundColor: Colors.white,
                ),
                child: const Text("Get.offNamed( '/next' )"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
