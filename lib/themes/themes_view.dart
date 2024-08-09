import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_v463/themes/themes_controller.dart';

import 'theme.dart';

class ThemesView extends StatelessWidget {
  ThemesView({super.key});

  final themeController = Get.find<ThemesController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Change Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GetX Theme',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  // // change the ThemeMode instead of theme
                  // themeController.changeThemeMode(ThemeMode.light);
                  // change the theme to the light theme.
                  themeController.changeTheme(Themes.lightTheme);
                  // themeController.saveTheme(false);
                } else {
                  // // change the ThemeMode instead of theme
                  // themeController.changeThemeMode(ThemeMode.dark);
                  // change the theme to the dark theme.
                  themeController.changeTheme(Themes.darkTheme);
                  // themeController.saveTheme(true);
                }
              },
              child: const Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
