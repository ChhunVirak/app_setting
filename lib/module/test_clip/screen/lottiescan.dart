import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieScan extends StatefulWidget {
  const LottieScan({Key? key}) : super(key: key);

  @override
  State<LottieScan> createState() => _LottieScanState();
}

class _LottieScanState extends State<LottieScan> {
  // late AnimationController controller;
  bool doo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://assets9.lottiefiles.com/packages/lf20_2fdqahhi.json',
          animate: doo,
          // controller: controller,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          doo = !doo;
          setState(() {});
        },
        child: const Icon(Icons.album),
      ),
    );
  }
}
