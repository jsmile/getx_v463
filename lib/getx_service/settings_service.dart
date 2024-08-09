import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/ansi_color.dart';

class SettingsService extends GetxService {
  late SharedPreferences _prefs;
  final counter = 0.obs;

  Future<SettingsService> init() async {
    debugPrint(info('### $runtimeType initialize shared preference'));
    _prefs = await SharedPreferences.getInstance();
    debugPrint(info('### $runtimeType shared preference ready'));

    counter.value = _prefs.getInt('counter') ?? 0;

    return this;
  }
}
