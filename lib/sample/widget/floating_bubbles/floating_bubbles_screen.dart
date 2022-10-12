import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fps.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FloatingBubblesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingBubblesScreenState();
  }
}

class _FloatingBubblesScreenState
    extends BaseStatefulState<FloatingBubblesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "floating_bubbles",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/floating_bubbles");
        },
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    eachFrame()
        .take(10000)
        .transform(const ComputeFps())
        // ignore: avoid_print
        .listen((fps) => print('fps: $fps'));
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Positioned.fill(
          child: FloatingBubbles.alwaysRepeating(
            noOfBubbles: 50,
            colorsOfBubbles: const [
              Colors.white,
              Colors.red,
            ],
            sizeFactor: 0.2,
            opacity: 70,
            speed: BubbleSpeed.slow,
            paintingStyle: PaintingStyle.fill,
            shape: BubbleShape.circle, //This is the default
          ),
        ),
      ],
    );
  }
}
