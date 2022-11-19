import 'package:app_setting/module/test_clip/screen/lottiescan.dart';
import 'package:flutter/material.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await LocalStorage.init();
  // await setting_repo.onFetchSetting();
  //Navigation Bar And Noti bar
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  ///Auto Night Mode
  // DateTime.now().hour < 16
  //     ? Get.changeTheme(ThemeData.dark())
  //     : Get.changeTheme(ThemeData.light());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: const LottieScan(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ValueListenableBuilder(
  //     valueListenable: setting_repo.setting!,
  //     builder: (context, setting_repo.SettingModel setting, widget) {
  //       return GetMaterialApp(
  //         debugShowCheckedModeBanner: false,
  //         title: 'Flutter Demo',
  //         theme: ThemeData(
  //           primarySwatch: Colors.indigo,
  //           primaryColor:
  //               Color(int.parse(setting.primaryColor!.replaceAll("#", "0XFF"))),
  //         ),
  //         home: const MyOverlay(),
  //       );
  //     },
  //   );
  // }
}
