import 'package:get/get.dart';

class User {
  // // class 의 속성들을 observer( .obs ) 로 선언하기
  // var name = 'Ruize'.obs; // RxString
  // var age = 30.obs;       // RxInt

  // class 의 속성들을 일반 속성들로 선언하기
  String name;
  int age;
  User({this.name = '', this.age = 0});
}
