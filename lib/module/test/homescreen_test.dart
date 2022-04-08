import 'package:app_setting/module/test/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTest extends StatelessWidget {
  const HomeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(Controller());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Obx(
            () => _controller.loading.value
                ? const CircularProgressIndicator()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _controller.userList
                        .map(
                          (e) => Text(
                            "Name = ${e.name} \n Email = ${e.email} \n",
                            style: const TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 18),
                          ),
                        )
                        .toList(),
                  ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.mynumber.value = "Hello";
          _controller.getUserApi();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
