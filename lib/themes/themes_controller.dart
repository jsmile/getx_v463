import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemesController extends GetxController {
  //Get the instance of GetStorage
  final _box = GetStorage();
  final _key = 'isDarkMode';

  // Get the theme mode from the local storage
  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;
  // ThemeMode get theme => Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;

  bool _loadTheme() => _box.read(_key) ?? false;

  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);

  void changeTheme(ThemeData theme) => Get.changeTheme(theme);

  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);
}
