import 'package:flame/flame.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:hello_word/sample/empty_screen.dart';
import 'package:hello_word/sample/game/hello/game_hello_screen.dart';

import 'lib/util/uI_utils.dart';
import 'sample/animation/menu_animation_screen.dart';
import 'sample/database/menu_database_screen.dart';
import 'sample/demo/menu_demo_screen.dart';
import 'sample/demo/syntax/syntax_screen.dart';
import 'sample/widget/menu_widget_screen.dart';

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
              Get.to(GameHelloScreen());
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
                    "https://github.com/tplloi/fullter_hello");
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
