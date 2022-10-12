import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/empty_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/game/rayWorld/MainGamePage.dart';
import 'package:flame/flame.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'lib/util/UIUtils.dart';
import 'sample/animation/MenuAnimationScreen.dart';
import 'sample/database/MenuDatabaseScreen.dart';
import 'sample/demo/menu_demo_screen.dart';
import 'sample/demo/syntax/SyntaxScreen.dart';
import 'sample/widget/MenuWidgetScreen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Main menu",
        () {
          SystemNavigator.pop();
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          UIUtils.getButton(
            "Animation",
            () {
              Get.to(MenuAnimationScreen());
            },
          ),
          UIUtils.getButton(
            "MenuDatabaseScreen",
            () {
              Get.to(MenuDatabaseScreen());
            },
          ),
          UIUtils.getButton(
            "Demo",
            () {
              Get.to(MenuDemoScreen());
            },
          ),
          UIUtils.getButton(
            "Game",
            () async {
              await Flame.device.fullScreen();
              Get.to(MainGamePage());
            },
          ),
          UIUtils.getButton(
            "Syntax",
            () {
              Get.to(SyntaxScreen());
            },
          ),
          UIUtils.getButton(
            "Widget",
            () {
              Get.to(MenuWidgetScreen());
            },
          ),
          if (kDebugMode)
            UIUtils.getButton(
              "Github",
              () {
                UrlLauncherUtils.launchInWebViewWithJavaScript(
                    "https://github.com/tplloi/fullter_tutorial");
              },
            ),
          UIUtils.getButton(
            "Rate app",
            () {
              UrlLauncherUtils.rateApp(null, null);
            },
          ),
          UIUtils.getButton(
            "More app",
            () {
              UrlLauncherUtils.moreApp();
            },
          ),
          UIUtils.getButton(
            "Policy",
            () {
              UrlLauncherUtils.launchInWebViewWithJavaScript(
                  "https://loitp.wordpress.com/2018/06/10/dieu-khoan-su-dung-chinh-sach-bao-mat-va-quyen-rieng-tu/");
            },
          ),
          UIUtils.getButton(
            "EmptyScreen",
            () {
              Get.to(EmptyScreen());
            },
          ),
        ],
      ),
    );
  }
}
