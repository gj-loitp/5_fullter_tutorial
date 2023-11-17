import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class TiktokLikeScrollerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TiktokLikeScrollerScreenState();
  }
}

class _TiktokLikeScrollerScreenState extends BaseStatefulState<TiktokLikeScrollerScreen> {
  Controller? controller;
  final List<Color> colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.green,
  ];

  @override
  initState() {
    controller = Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });

    // controller.jumpToPosition(4);
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
        "tiktoklikescroller",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser("https://pub.dev/packages/tiktoklikescroller");
        },
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: colors.length,
        swipePositionThreshold: 0.2,
        // ^ the fraction of the screen needed to scroll
        swipeVelocityThreshold: 2000,
        // ^ the velocity threshold for smaller scrolls
        animationDuration: const Duration(milliseconds: 400),
        // ^ how long the animation will take
        controller: controller,
        // ^ registering our own function to listen to page changes
        builder: (BuildContext context, int index) {
          return Container(
            color: colors[index],
            child: Stack(children: [
              Center(
                child: Text(
                  '$index',
                  key: Key('$index-text'),
                  style: const TextStyle(fontSize: 48, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  color: Colors.white.withAlpha(125),
                  child: Column(
                    children: [
                      Text("--- Buttons For Testing Controller Functions ---"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Jump To:"),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                        ...Iterable<int>.generate(colors.length)
                            .toList()
                            .map(
                              (e) => MaterialButton(
                                color: Colors.white.withAlpha(125),
                                child: Text(
                                  "$e",
                                  key: Key('$e-jump'),
                                ),
                                onPressed: () => controller?.jumpToPosition(e),
                              ),
                            )
                            .toList(),
                      ]),
                      Text("Animate To:"),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                        ...Iterable<int>.generate(colors.length)
                            .toList()
                            .map(
                              (e) => MaterialButton(
                                color: Colors.white.withAlpha(125),
                                child: Text(
                                  "$e",
                                  key: Key('$e-animate'),
                                ),
                                onPressed: () => controller?.animateToPosition(e),
                              ),
                            )
                            .toList(),
                      ]),
                    ],
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success, {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }
}
