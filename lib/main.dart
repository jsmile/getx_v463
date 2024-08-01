import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/material.dart';
import 'navigation/get_navigation.dart';

void main() {
  // ansi color log 초기화
  ansiColorDisabled = false;
  runApp(const GetNavigation());
}
