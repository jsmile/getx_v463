import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './messages.dart';
import './translations_view.dart';

class TranslationsExample extends StatelessWidget {
  const TranslationsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // use coutom translation
      translations: Messages(),
      // translations will be displayed in that locale
      locale: const Locale('en', 'US'),
      // system locale
      // locale: Get.deviceLocale,
      // specify the fallback locale in case the system locale is not supported
      fallbackLocale: const Locale('en', 'US'),
      home: TranslationView(),
    );
  }
}
