import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'awesome_dialog/awesome_dialog_screen.dart';
import 'dialog/dialog_screen.dart';
import 'panara_dialogs/panara_dialog_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuDialogScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          UIUtils.getButton(
            "AwesomeDialogScreen",
            () {
              Get.to(() => AwesomeDialogScreen());
            },
          ),
          UIUtils.getButton(
            "DialogScreen",
            () {
              Get.to(() => DialogScreen());
            },
          ),
          UIUtils.getButton(
            "panara_dialogs",
            () {
              Get.to(() => PanaraDialogScreen());
            },
          ),
        ],
      ),
    );
  }
}
