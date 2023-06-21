import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  List colors = [
    Colors.blue,
    Colors.white,
    Colors.white,
    Colors.white,
  ].obs;

  void changecolor(index) {
    for (var i = 0; i < colors.length; i++) {
      colors[i] = Colors.white;
    }
    colors[index] = Colors.blue;
  }
}
