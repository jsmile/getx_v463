import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'themes/themes_example.dart';

// import 'navigation/get_navigation.dart';
// import 'state_management/reactive_state_management.dart';
// import 'state_management/simple_state_management.dart';
// import 'getx_controller/view.dart';
// import 'dependency_mamagement/view.dart';
// import 'translations/translations_example.dart';

void main() async {
  // ansi color log 초기화
  ansiColorDisabled = false;

  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // // GetX Navigation
      // home: const GetNavigation(),

      // // GetX Reactive State Management
      // home: ReactiveStateManagement(),

      // // GetX Simple State Management
      // home: const SimpleStateManagement(),

      // // GetX Controller
      // home: const GetXControllerView(),

      // // GetX Dependency Management
      // home: const DepnedencyView(),

      // // GetX TranslationsExample Management
      // home: const TranslationsExample(),

      // GetX Change Theme
      home: ThemesExample(),
    );
  }
}
