import 'dart:math' as math;

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
class AnimatedBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedBuilderScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: Container(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: AnimatedBuilderWidget(),
      ),
    );
  }
}

class AnimatedBuilderWidget extends StatefulWidget {
  @override
  _AnimatedBuilderWidgetState createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool status = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _controller,
          child: Container(width: 200.0, height: 200.0, color: Colors.green),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
        SizedBox(
          height: 50,
        ),
        UIUtils.getButton("Click", () {
          status ? _controller.forward() : _controller.reverse();
          status = !status;
        }),
      ],
    );
  }
}
