import 'dart:async';

import 'package:flutter/material.dart';

class MyOverlay extends StatefulWidget {
  const MyOverlay({Key? key}) : super(key: key);

  @override
  State<MyOverlay> createState() => _MyOverlayState();
}

class _MyOverlayState extends State<MyOverlay> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    autoPlay(context);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint('Not Touch');
    super.didChangeAppLifecycleState(state);
  }

  ///
  final key1 = GlobalKey();
  final key2 = GlobalKey();
  final key3 = GlobalKey();

  ///
  final listWidget = [
    ElevatedButton(
      onPressed: () {},
      child: const Text('Khmer'),
    ),
    ElevatedButton(
      onPressed: () {},
      child: const Text('English'),
    ),
    ElevatedButton(
      onPressed: () {},
      child: const Text('Chinese'),
    ),
  ];

  ///
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;

  void showOverlay(BuildContext context1, GlobalKey key, int index,
      Function onCancel) async {
    overlayState = Overlay.of(context1);
    var val = key.currentContext!.findRenderObject() as RenderBox;
    var positionkey = GlobalKey();
    var positionval = key.currentContext!.findRenderObject() as RenderBox;

    overlayEntry = OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: () {
              overlayEntry!.remove();
              onCancel();
            },
            child: Container(
              color: Colors.black.withOpacity(0.4),
              child: Stack(
                children: [
                  Positioned(
                    key: positionkey,
                    top: val.localToGlobal(Offset.zero).dy - 5,
                    left: val.localToGlobal(Offset.zero).dx - 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: listWidget[index],
                    ),
                  ),

                  ///Tooltips 
                  Positioned(
                    top: positionval.localToGlobal(Offset.zero).dy - 70,
                    left: positionval.localToGlobal(Offset.zero).dx - 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('This is test'),
                                ShowLoading()
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          height: 10,
                          width: 20,
                          child: CustomPaint(
                            painter: MyPainter(),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );

    overlayState!.insert(overlayEntry!);
  }

  ///
  num b = 0;
  testRotate() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      b = timer.tick;
      setState(() {});
    });
  }

  ///
  void autoPlay(BuildContext context1) {
    Future.delayed(const Duration(seconds: 1), () {
      showOverlay(context1, key1, 0, () {});
      Timer.periodic(const Duration(seconds: 1), (timer) {
        debugPrint(' a ${timer.tick}');
        if (timer.tick == 4) {
          overlayEntry!.remove();
          showOverlay(context1, key2, 1, () {
            timer.cancel();
          });
        } else if (timer.tick == 8) {
          overlayEntry!.remove();
          showOverlay(context1, key3, 2, () {
            timer.cancel();
          });
        } else if (timer.tick == 12) {
          overlayEntry!.remove();
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              key: key1,
              onPressed: () {
                // autoPlay(context);
                // autoplayOverlay(context);
                // onShowAllAppTour(context);
                showOverlay(context, key1, 0, () {});
              },
              child: const Text('Khmer'),
            ),
            ElevatedButton(
              key: key2,
              onPressed: () {
                // showOverlay(context, key2);
              },
              child: const Text('English'),
            ),
            ElevatedButton(
              key: key3,
              onPressed: () {
                // showOverlay(context, key3);
              },
              child: const Text('Chinese'),
            ),
          ],
        ),
      ),
      floatingActionButton: Transform.rotate(
        angle: double.parse("$b"),
        child: FloatingActionButton(
          onPressed: () {
            testRotate();
          },
          child: const Icon(Icons.grass_outlined),
        ),
      ),
    );
  }
}

class ShowLoading extends StatefulWidget {
  const ShowLoading({Key? key}) : super(key: key);

  @override
  State<ShowLoading> createState() => _ShowLoadingState();
}

class _ShowLoadingState extends State<ShowLoading> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1), () {
      width = 70;
      setState(() {});
    });
    super.initState();
  }

  double width = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: AnimatedContainer(
        height: 2,
        width: width,
        decoration: const BoxDecoration(color: Colors.red),
        duration: const Duration(milliseconds: 3500),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}
