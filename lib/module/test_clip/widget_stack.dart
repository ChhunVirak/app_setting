import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: 100,
          color: Colors.red,
        ),
        Transform.rotate(
          angle: 3.14 / 2,
          child: Container(
            height: 20,
            width: width + 2000,
            color: Colors.yellow,
            // child: const Text("data"),
          ),
        )
      ],
    );
  }
}
