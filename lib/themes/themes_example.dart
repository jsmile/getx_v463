import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './theme.dart';
import './themes_view.dart';

import './themes_controller.dart';

class ThemesExample extends StatelessWidget {
  ThemesExample({super.key});

  final themeController = Get.put(ThemesController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // change the themeMode insted of theme
      themeMode: themeController.theme,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: ThemesView(),
    );
  }
}
