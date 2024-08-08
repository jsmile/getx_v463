import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'logged_in': 'logged in as @name \n email @email',
        },
        'es_ES': {
          'hello': 'Hola Mundo',
          'logged_in': 'inicio de sesión como @name \n e-mail electrónico',
        },
        'ko_KR': {
          'hello': '안녕하세요?',
          'logged_in': '@name 님이 로드인하였습니다 \n email @email',
        },
      };
}
