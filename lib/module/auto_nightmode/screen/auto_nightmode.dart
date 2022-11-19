import 'package:app_setting/module/auto_nightmode/controller/night_mode_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AutoNightMode extends StatelessWidget {
  const AutoNightMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nightController = Get.put(AutoNightController());
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: Column(
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.blue,
                    nightController
                        .blendModelist[nightController.currentfilter.value]),
                child: const Image(
                  colorBlendMode: BlendMode.colorDodge,
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: nightController.blendModelist
                      .asMap()
                      .entries
                      .map((e) => GestureDetector(
                            onTap: () {
                              nightController.currentfilter.value = e.key;
                            },
                            child: Card(
                              color:
                                  e.key == nightController.currentfilter.value
                                      ? Colors.red
                                      : Colors.grey,
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 100,
                                child: Text(e.value
                                    .toString()
                                    .replaceAll("BlendMode.", "")
                                    .toUpperCase()),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
