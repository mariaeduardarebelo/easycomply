import 'package:flutter/material.dart';

class HomeController {
  final counter = ValueNotifier<int>(0);

  increment() {
    counter.value += 1;
  }
}
