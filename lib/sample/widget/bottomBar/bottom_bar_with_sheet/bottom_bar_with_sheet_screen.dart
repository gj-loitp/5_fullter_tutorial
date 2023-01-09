import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'examples/left_button.dart';
import 'examples/right_button.dart';
import 'main.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class BottomBarWithSheetScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomBarWithSheetScreenState();
  }
}

class _BottomBarWithSheetScreenState
    extends BaseStatefulState<BottomBarWithSheetScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "bottom_bar_with_sheet",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/bottom_bar_with_sheet");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "BaseExample",
            () {
              Get.to(() => BaseExample());
            },
          ),
          UIUtils.getButton(
            "LeftButtonExample",
            () {
              Get.to(() => LeftButtonExample());
            },
          ),
          UIUtils.getButton(
            "RightButtonExample",
            () {
              Get.to(() => RightButtonExample());
            },
          ),
        ],
      ),
    );
  }
}
