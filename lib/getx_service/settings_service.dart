import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/ansi_color.dart';

/*
  GetX Service 는 GetXController 와 비슷하지만, 
  GetXController 는 GetBuilder, Obx, GetX 등을 사용하여 UI 를 업데이트 하지만,
  GetX Service 는 GetXController 와 달리 UI 와 상관없이 동작하며, 
  APP 전체와 관련된 작업( 데이터를 저장하거나, 다른 서비스와 통신 ) 등에 적합함.
*/
class SettingsService extends GetxService {
  late SharedPreferences _prefs;
  final counter = 0.obs;

  Future<SettingsService> init() async {
    debugPrint(info('### $runtimeType initialize shared preference'));
    _prefs = await SharedPreferences.getInstance();
    debugPrint(info('### $runtimeType shared preference ready'));

    counter.value = (_prefs.getInt('counter') ?? 0);

    return this;
  }

  Future<void> incrementCounter() async {
    debugPrint(info('### incrementCounter()'));

    counter.value = _prefs.getInt('counter')! + 1;
    debugPrint(info('### ${counter.value}'));
    await _prefs.setInt('counter', counter.value);
  }
}
