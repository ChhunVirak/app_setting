import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashController extends GetxController {
  final favList = <Fav>[
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav(),
    Fav()
  ].obs;
}

class Fav {
  bool fav;
  Color color;
  Fav({
    this.fav = false,
    this.color = Colors.grey,
  });
}
