import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/button/flutter_speed_dial/FlutterSpeedDialScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/button/like_button_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/button/progress_state_button/ProgressStateScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'back_button_screen.dart';
import 'button_bar_screen.dart';
import 'drop_down_screen.dart';
import 'flutter_animated_button/flutter_animated_button_screen.dart';
import 'icon_button_screen.dart';
import 'outline_button_screen.dart';
import 'popup_menu_button_screen.dart';
import 'raw_material_button_screen.dart';
import 'text_button_screen.dart';
import 'toggle_button_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
              "flutter_animated_button",
              () {
                Get.to(FlutterAnimatedButtonScreen());
              },
              description:
                  "A flutter package project which contains a collection of cool and beautiful button animations.",
            ),
            UIUtils.getButton(
              "flutter_speed_dial",
              () {
                Get.to(FlutterSpeedDialScreen());
              },
              description:
                  "Flutter plugin to implement a beautiful and dynamic Material Design Speed Dial with labels, animated icons, multi-directional children and much more.",
            ),
            UIUtils.getButton(
              "progress_state_button",
              () {
                Get.to(ProgressStateScreen());
              },
              description:
                  "A customizable progress button widget for Flutter Android, IOS and Web.",
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
