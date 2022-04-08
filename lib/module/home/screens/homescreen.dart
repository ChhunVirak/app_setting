import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import '../../../utils/functions/setting_repositor.dart' as app_setting;
import '../../../utils/functions/setting_repositor.dart';
import '../../dashBoard/dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.white12;
  int myColor = 4285144858;

  String? name;
  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("App Setting"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: Colors.blue,
              child: ColorPicker(
                labelTypes: const [],
                pickerColor: color,
                onColorChanged: (value) {
                  setState(() {
                    myColor = value.value;
                    color = value;
                  });
                  debugPrint("Color : ${value.value}");
                },
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                app_setting.setting!.value = SettingModel(
                    primaryColor: "$myColor", secondaryColor: '#003840');
              },
              child: const Text("Change Color"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DashBoard()));
              },
              child: const Text("Go To DashBoard"),
            ),
          ],
        ),
      ),
    );
  }
}
