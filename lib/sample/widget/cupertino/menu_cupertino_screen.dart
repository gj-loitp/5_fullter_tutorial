import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'cupertino_action_sheet_screen.dart';
import 'cupertino_segmented_control_screen.dart';
import 'cupertino_timer_picker_screen.dart';
import 'cupertino_widget_screen.dart';

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
