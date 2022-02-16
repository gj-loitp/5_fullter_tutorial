import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';

class DelayedDisplayScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DelayedDisplayScreenState();
  }
}

class _DelayedDisplayScreenState
    extends BaseStatefulState<DelayedDisplayScreen> {
  final Duration initialDelay = Duration(seconds: 1);

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
      backgroundColor: Colors.amber,
      appBar: UIUtils.getAppBar(
        "DelayedDisplayScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/delayed_display");
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DelayedDisplay(
            delay: initialDelay,
            child: Text(
              "Hello",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: DimenConstants.marginPaddingMedium,
          ),
          DelayedDisplay(
            delay: Duration(seconds: initialDelay.inSeconds + 1),
            child: Text(
              "World",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: DimenConstants.marginPaddingMedium,
          ),
          DelayedDisplay(
            delay: Duration(seconds: initialDelay.inSeconds + 2),
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Subscribe",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: DimenConstants.marginPaddingMedium,
          ),
          DelayedDisplay(
            delay: Duration(seconds: initialDelay.inSeconds + 3),
            child: Text(
              "I already have an account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: DimenConstants.marginPaddingMedium,
          ),
          DelayedDisplay(
            delay: Duration(seconds: initialDelay.inSeconds + 4),
            child: Image.asset(
              "assets/images/gallery2.jpg",
              width: Get.width,
            ),
          ),
        ],
      ),
    );
  }
}
