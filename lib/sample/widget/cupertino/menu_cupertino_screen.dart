import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';

import 'cupertino_action_sheet_screen.dart';
import 'cupertino_segmented_control_screen.dart';
import 'cupertino_timer_picker_screen.dart';
import 'cupertino_widget_screen.dart';

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
