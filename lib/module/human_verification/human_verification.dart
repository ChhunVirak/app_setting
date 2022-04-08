import 'package:app_setting/module/human_verification/human_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HumanVerification extends StatelessWidget {
  const HumanVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final humanController = Get.put(HumanController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              const Text("Human Verification!"),
              const SizedBox(
                height: 20,
              ),
              const Text("Please Select all bros smos"),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 3,
                child: GridView.builder(
                  itemCount: humanController.listVerify.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        humanController.listVerify[index].select =
                            !humanController.listVerify[index].select;
                        humanController.listVerify[index].humanVerify =
                            !humanController.listVerify[index].humanVerify;
                        humanController.listVerify.refresh();
                      },
                      child: Obx(
                        () => Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      humanController.listVerify[index].img,
                                    ),
                                    fit: BoxFit.cover),
                                color: humanController.listVerify[index].select
                                    ? Colors.red
                                    : Colors.grey,
                                border: Border.all(
                                    color:
                                        humanController.listVerify[index].select
                                            ? Colors.blue
                                            : Colors.transparent,
                                    width: 2),
                              ),
                            ),
                            humanController.listVerify[index].select
                                ? const Icon(
                                    Icons.download_done,
                                    color: Colors.white,
                                    size: 24,
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  humanController.checkCorret();
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.indigo[900],
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
