import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';
// import 'navigation/get_navigation.dart';
// import 'state_management/reactive_state_management.dart';
// import 'state_management/simple_state_management.dart';
// import 'getx_controller/view.dart';
// import 'dependency_mamagement/view.dart';
import 'translations/translations_example.dart';

void main() {
  // ansi color log 초기화
  ansiColorDisabled = false;

  // // GetX Navigation
  // runApp(const GetNavigation());

  // // GetX Reactive State Management
  // runApp(ReactiveStateManagement());

  // // GetX Simple State Management
  // runApp(const SimpleStateManagement());

  // // GetX Controller
  // runApp(const GetXControllerView());

  // // GetX Dependency Management
  // runApp(DepnedencyView());

  // GetX TranslationsExample Management
  runApp(const TranslationsExample());
}
