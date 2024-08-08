import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './translations_controller.dart';

class TranslationView extends StatelessWidget {
  TranslationView({super.key});

  final messageController = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    var products = <String>[];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX Internalization'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hello'.tr, // 언어변환
                style: const TextStyle(
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                // 언어변환 시 param 전달
                'logged_in'.trParams(
                  {
                    'name': 'World',
                    'email': 'ruize@youtube.com',
                  },
                ),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  messageController.changeLanguage('en', 'US');
                },
                child: const Text('English'),
              ),
              ElevatedButton(
                onPressed: () {
                  messageController.changeLanguage('es', 'es');
                },
                child: const Text('Spanish'),
              ),
              ElevatedButton(
                onPressed: () {
                  messageController.changeLanguage('ko', 'KR');
                },
                child: const Text('한글'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
