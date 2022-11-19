import 'package:app_setting/module/test_clip/widget_stack.dart';
import 'package:flutter/material.dart';

class TestClip extends StatelessWidget {
  const TestClip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: MyWidget()),
    );
  }
}
