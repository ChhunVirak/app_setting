import 'dart:math';

import 'package:app_setting/module/dashBoard/dash_controller.dart';
import 'package:app_setting/module/human_verification/human_verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashController = Get.put(DashController());
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: dashController.favList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        dashController.favList[index].fav =
                            !dashController.favList[index].fav;
                        dashController.favList[index].color =
                            Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
                        dashController.favList.refresh();
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: dashController.favList[index].fav
                                ? dashController.favList[index].color
                                : Colors.grey,
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HumanVerification()));
                  },
                  child: const Text("Go To Verification"))
            ],
          ),
        ),
      ),
    );
  }
}
