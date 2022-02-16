import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/button/flutter_speed_dial/flutter_speed_dial_screen.dart';
import 'package:hello_word/sample/widget/button/like_button_screen.dart';
import 'package:hello_word/sample/widget/button/progress_state_button/progress_state_screen.dart';

import 'back_button_screen.dart';
import 'button_bar_screen.dart';
import 'drop_down_screen.dart';
import 'icon_button_screen.dart';
import 'outline_button_screen.dart';
import 'popup_menu_button_screen.dart';
import 'raised_button_screen.dart';
import 'raw_material_button_screen.dart';
import 'text_button_screen.dart';
import 'toggle_button_screen.dart';

class MenuButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuButtonScreen",
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
              "FlutterSpeedDialScreen",
                  () {
                Get.to(FlutterSpeedDialScreen());
              },
            ),
            UIUtils.getButton(
              "ProgressStateScreen",
                  () {
                Get.to(ProgressStateScreen());
              },
            ),
            UIUtils.getButton(
              "BackButtonScreen",
              () {
                Get.to(BackButtonScreen());
              },
            ),
            UIUtils.getButton(
              "ButtonBarScreen",
              () {
                Get.to(ButtonBarScreen());
              },
            ),
            UIUtils.getButton(
              "DropDownScreen",
              () {
                Get.to(DropDownScreen());
              },
            ),
            UIUtils.getButton(
              "IconButtonScreen",
              () {
                Get.to(IconButtonScreen());
              },
            ),
            UIUtils.getButton(
              "LikeButtonScreen",
                  () {
                Get.to(LikeButtonScreen());
              },
            ),
            UIUtils.getButton(
              "OutlineButtonScreen",
              () {
                Get.to(OutlineButtonScreen());
              },
            ),
            UIUtils.getButton(
              "PopupMenuButtonScreen",
              () {
                Get.to(PopupMenuButtonScreen());
              },
            ),
            UIUtils.getButton(
              "RaisedButtonScreen",
              () {
                Get.to(RaisedButtonScreen());
              },
            ),
            UIUtils.getButton(
              "RawMaterialButtonScreen",
              () {
                Get.to(RawMaterialButtonScreen());
              },
            ),
            UIUtils.getButton(
              "TextButtonScreen +++",
              () {
                Get.to(TextButtonScreen());
              },
            ),
            UIUtils.getButton(
              "ToggleButtonScreen",
              () {
                Get.to(ToggleButtonScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
