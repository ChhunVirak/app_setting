import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'scan_controller.dart';

class ScanAnimation extends StatefulWidget {
  const ScanAnimation({Key? key}) : super(key: key);

  @override
  State<ScanAnimation> createState() => _ScanAnimationState();
}

class _ScanAnimationState extends State<ScanAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  void animateScanAnimation(bool reverse) {
    if (reverse) {
      _animationController.reverse(from: 1.0);
    } else {
      _animationController.forward(from: 0.0);
    }
  }
  // final scorePosition = (animation.value * 440) + 16;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animateScanAnimation(true);
      } else if (status == AnimationStatus.dismissed) {
        animateScanAnimation(false);
      }
    });

    super.initState();
  }

  go() {
    // animation.reverse();
  }

  final scancontroller = Get.put(Scancontroller());

  bool runn = false;
  anim() {
    scancontroller.top.value = 0;
    scancontroller.left.value = 0;
    scancontroller.right.value = 0;
    // setState(() {});
    runn = !runn;

    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timer.tick.isOdd && runn) {
        debugPrint('do');
        scancontroller.top.value = 190;
        // scancontroller.left.value = 30;
        scancontroller.right.value = 90;
        // setState(() {});
      } else if (timer.tick.isEven && runn) {
        debugPrint('do');
        scancontroller.left.value = 100;
        // scancontroller.right.value = 30;
        scancontroller.top.value = 0;
        // setState(() {});
      } else if (!runn) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red[100],
            ),
            AnimatedPositioned(
              top: _animationController.value,
              duration: const Duration(seconds: 1),
              child: Container(
                height: 10,
                width: 90,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animationController.forward(from: 0.0);
          // animateScanAnimation(true); // Starts the animation.
          setState(() {});
        },
        child: const Icon(Icons.gps_fixed),
      ),
    );
  }
}
