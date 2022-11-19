import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AutoNightController extends GetxController {
  final switchValue = false.obs;
  getTime() {
    switchValue.value
        ? Get.changeTheme(ThemeData.dark())
        : Get.changeTheme(ThemeData.light());
  }

  ///
  final currentfilter = 0.obs;
  final blendModelist = <BlendMode>[
    BlendMode.color,
    BlendMode.colorBurn,
    BlendMode.colorDodge,
    BlendMode.darken,
    BlendMode.difference,
    BlendMode.dst,
    BlendMode.screen
  ].obs;
}
