import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AnimatedContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedContainerScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: AnimatedContainerWidget(),
      ),
    );
  }
}

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double size = 200;
  Color? color = Colors.blue.shade200;
  double radius = 0;
  Future future = Future.delayed(Duration(seconds: 3));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AnimatedContainer(
            margin: EdgeInsets.only(top: 20),
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(radius),
            ),
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 300),
          ),
          UIUtils.getButton("Change Size", () {
            size = Random().nextInt(300).toDouble();
            setState(() {});
          }),
          UIUtils.getButton("Change Color", () {
            color = Colors.blue[100 + 100 * Random().nextInt(8)];
            setState(() {});
          }),
          UIUtils.getButton("Change Radius", () {
            radius = 100 * Random().nextDouble();
            setState(() {});
          }),
        ],
      ),
    );
  }
}
