import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'switch_screen.dart';
import 'toggle_switch/toggle_switch_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuSwitchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuWidgetScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        thumbVisibility: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "toggle_switch",
              () {
                Get.to(() => ToggleSwitchScreen());
              },
              description:
                  "Toggle Switch - A simple toggle switch widget. It can be fully customized with desired icons, width, colors, text, corner radius etc. It also maintains selection state.",
            ),
            UIUtils.getButton(
              "SwitchScreen",
              () {
                Get.to(() => SwitchScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
