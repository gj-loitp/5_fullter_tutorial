import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'toast_context.dart';
import 'toast_no_context.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */

// GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class FluttertoastScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FluttertoastScreenState();
  }
}

class _FluttertoastScreenState extends BaseStatefulState<FluttertoastScreen> {
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
        "fluttertoast",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/fluttertoast");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton("Flutter Toast No Context", () {
            Get.to(() => ToastNoContext());
          }),
          UIUtils.getButton("Flutter Toast Context", () {
            Get.to(() => ToastContext());
          }),
        ],
      ),
    );
  }
}
