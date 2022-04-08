import 'package:app_setting/utils/functions/api_base_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  final apibasehelper = ApiBaseHelper();

  ///
  final mynumber = "Virak".obs;
  increaseNumber() {
    mynumber.value = "Chhaileng";
  }

  ///Get Api
  final loading = true.obs;
  final userList = <Album>[].obs;
  Future<List<Album>> getUserApi() async {
    loading.value = true;
    await apibasehelper
        .onNetworkRequesting(
            url: "https://api.coindesk.com/v1/bpi/currentprice.json",
            methode: METHODE.get,
            auth: "",
            isAuthorize: false)
        .then((responese) {
      debugPrint("$responese");
      userList.clear();
      responese.map((e) {
        userList.add(Album.fromJson(e));
      }).toList();
      loading.value = false;
    }).onError((error, stackTrace) {
      loading.value = false;
    });
    return userList;
  }
}

class Album {
  final String? name;
  final String? email;

  const Album({
    this.name,
    this.email,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['name'],
      email: json['email'],
    );
  }
}
