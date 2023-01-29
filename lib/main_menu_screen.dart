import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/empty_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/func/main_func_screen.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flame/flame.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'lib/core/base_stateful_state.dart';
import 'lib/util/ui_utils.dart';
import 'sample/animation/menu_animation_screen.dart';
import 'sample/controller/main_menu_controller.dart';
import 'sample/database/menu_database_screen.dart';
import 'sample/demo/menu_demo_screen.dart';
import 'sample/demo/syntax/syntax_screen.dart';
import 'sample/game/ray_world/main_game_page.dart';
import 'sample/widget/menu_widget_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuScreenState();
  }
}

class _MenuScreenState extends BaseStatefulState<MenuScreen> {
  var _cMenu = Get.put(MainMenuController());

  @override
  void initState() {
    super.initState();

    _cMenu.setupData();
    _cMenu.initPackageInfo();
  }

  @override
  void dispose() {
    _cMenu.clearOnDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Main menu",
        () {
          SystemNavigator.pop();
        },
        () {
          UrlLauncherUtils.launchPolicy();
        },
        iconData: Icons.policy,
      ),
      body: Obx(() {
        var isFullData = _cMenu.isFullData.value;
        return ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(
            DimenConstants.marginPaddingMedium,
            DimenConstants.marginPaddingMedium,
            DimenConstants.marginPaddingMedium,
            DimenConstants.marginPaddingLarge,
          ),
          children: [
            Container(
              alignment: Alignment.center,
              child: UIUtils.getText("Version ${_cMenu.packageInfo.version}"),
            ),
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
            if (isFullData)
              UIUtils.getButton(
                "Demo",
                () {
                  Get.to(MenuDemoScreen());
                },
              ),
            UIUtils.getButton(
              "Function",
              () {
                Get.to(MenuFuncScreen());
              },
            ),
            if (isFullData)
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
            if (isFullData)
              UIUtils.getButton(
                "Widget",
                () {
                  Get.to(MenuWidgetScreen());
                },
              ),
            if (isFullData)
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
                UrlLauncherUtils.launchPolicy();
              },
            ),
            UIUtils.getButton(
              "EmptyScreen",
              () {
                Get.to(EmptyScreen());
              },
            ),
            if (kDebugMode)
              UIUtils.getButton(
                "Force a test crash",
                () {
                  FirebaseCrashlytics.instance.crash();
                },
              ),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            InkWell(
              onTap: () {
                UrlLauncherUtils.moreApp();
              },
              child: UIUtils.getText(
                  """People can criticise me all the time they want, by this is what I am and I won't change the way I live for them.
I live the way I want to flow.
If we don’t transform the world, who will? If not now, when?
If you have something to give, give it now
Do your little bit of good where you are.
It’s those little bits of good put together that overwhelm the world.
Don’t just think, do it. Now it is you turn,  do it now, download my apps and rate 5 stars. Thank you!
https://play.google.com/store/apps/dev?id=9198084038765766736"""),
            ),
          ],
        );
      }),
    );
  }
}
