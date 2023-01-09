import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'awesome_dialog/awesome_dialog_screen.dart';
import 'dialog/dialog_screen.dart';
import 'flutter_smart_dialog/flutter_smart_dialog_screen.dart';
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
            "awesome_dialog",
            () {
              Get.to(() => AwesomeDialogScreen());
            },
            description:
                "Flutter package to show beautiful dialogs(INFO,QUESTION,WARNING,SUCCESS,ERROR) with animations as simply as possible.",
          ),
          UIUtils.getButton(
            "DialogScreen",
            () {
              Get.to(() => DialogScreen());
            },
          ),
          UIUtils.getButton(
            "flutter_smart_dialog",
            () {
              Get.to(() => FlutterSmartDialogScreen());
            },
            description:
                "An elegant Flutter Dialog solution, Easily implement Toast, Loading and custom Dialog, Make the use of the dialog easier!",
          ),
          UIUtils.getButton(
            "panara_dialogs",
            () {
              Get.to(() => PanaraDialogScreen());
            },
            description:
                "PanaraDialogs is a Dialog UI Kit. A minimal but beautiful design for Flutter Dialogs.",
          ),
        ],
      ),
    );
  }
}
