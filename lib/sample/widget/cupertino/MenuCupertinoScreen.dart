import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../lib/util/url_launcher_utils.dart';
import 'CupertinoActionSheetScreen.dart';
import 'CupertinoSegmentedControlScreen.dart';
import 'CupertinoTimerPickerScreen.dart';
import 'CupertinoWidgetScreen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuCupertinoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuCupertinoScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton("cupertino_icons", () {
              UrlLauncherUtils.launchInBrowser(
                  "https://api.flutter.dev/flutter/cupertino/CupertinoIcons-class.html#constants");
            },
                description:
                    'Default icons asset for Cupertino widgets based on Apple styled icons'),
            UIUtils.getButton(
              "CupertinoActionSheetScreen",
              () {
                Get.to(CupertinoActionSheetScreen());
              },
            ),
            UIUtils.getButton(
              "CupertinoSegmentedControlScreen",
              () {
                Get.to(CupertinoSegmentedControlScreen());
              },
            ),
            UIUtils.getButton(
              "CupertinoTimerPickerScreen",
              () {
                Get.to(CupertinoTimerPickerScreen());
              },
            ),
            UIUtils.getButton(
              "CupertinoWidgetScreen",
              () {
                Get.to(CupertinoWidgetScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
