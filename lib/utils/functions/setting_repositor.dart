// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'dart:convert';
import '../../../utils/functions/local_storage.dart';
import 'package:flutter/material.dart';
import 'api_base_helper.dart';

ValueNotifier<SettingModel>? setting = ValueNotifier(const SettingModel()); //

ApiBaseHelper apiBaseHelper = ApiBaseHelper();
SettingModel settingModel = const SettingModel();

Future<SettingModel> onFetchSetting() async {
  await apiBaseHelper
      .onNetworkRequesting(
          url: 'https://cicstaging.z1central.com/api/v3/app-setting',
          methode: METHODE.get,
          isAuthorize: false)
      .then((value) {
    // debugPrint("Hello world: ${value['app-setting']}");
    LocalStorage.storeData(
      key: 'app-setting',
      value: json.encode(value['app-setting']),
    );
    settingModel = SettingModel.fromJson(value['app-setting']);
    setting!.value = settingModel;
    // debugPrint("Hello World: ${setting!.value.primaryColor}");
    setting!.notifyListeners();

    // update()
    // setState(())
  });
  return setting!.value;
}

Future<SettingModel> onInitSetting() async {
  setting!.value =
      const SettingModel(primaryColor: '#005f73', secondaryColor: '#003840');
  setting!.notifyListeners();
  return setting!.value;
}

onChangePrimaryColor() async {
  setting!.value =
      const SettingModel(primaryColor: '#F23030', secondaryColor: '#003840');
  setting!.notifyListeners();
}

class SettingModel {
  final String? primaryColor, secondaryColor;

  const SettingModel({
    this.secondaryColor,
    this.primaryColor,
  });

  factory SettingModel.fromJson(Map<String, dynamic> json) {
    return SettingModel(
      primaryColor: json['bright_primary_color'],
      secondaryColor: json['bright_card_color'],
    );
  }
}
