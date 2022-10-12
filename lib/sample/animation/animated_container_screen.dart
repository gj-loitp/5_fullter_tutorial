import 'dart:math';

import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AnimatedContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedContainerScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
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
