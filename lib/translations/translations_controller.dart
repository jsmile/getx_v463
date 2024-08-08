import 'dart:ui';
import 'package:get/get.dart';

class MessageController extends GetxController {
  void changeLanguage(String languageCode, String countryCode) {
    // 지역 설정
    //  ISO Language Code Table : http://www.lingoes.net/en/translator/langcode.htm
    var locale = Locale(languageCode, countryCode);
    // 지역(언어) 변환 실행
    Get.updateLocale(locale);
  }
}
