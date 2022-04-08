import 'package:app_setting/module/home/screens/homescreen.dart';
import 'package:app_setting/utils/functions/local_storage.dart';
import 'package:app_setting/utils/functions/setting_repositor.dart'
    as setting_repo;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  await setting_repo.onFetchSetting();
  // await get
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: setting_repo.setting!,
        builder: (context, setting_repo.SettingModel setting, widget) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primaryColor: Color(
                  int.parse(setting.primaryColor!.replaceAll("#", "0XFF"))),
            ),
            home: const HomeScreen(),
          );
        });
  }
}
