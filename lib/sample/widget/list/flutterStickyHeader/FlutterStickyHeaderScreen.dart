import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AnimatedHeader.dart';
import 'Grid.dart';
import 'List.dart';
import 'MixSlivers.dart';
import 'NotSticky.dart';
import 'Reverse.dart';
import 'SideHeader.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterStickyHeaderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterStickyHeaderScreenState();
  }
}

class _FlutterStickyHeaderScreenState
    extends BaseStatefulState<FlutterStickyHeaderScreen> {
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
        "flutter_sticky_header",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_sticky_header");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "List Example",
            () {
              Get.to(ListExample());
            },
          ),
          UIUtils.getButton(
            "Grid Example",
            () {
              Get.to(GridExample());
            },
          ),
          UIUtils.getButton(
            "Not Sticky Example",
            () {
              Get.to(NotStickyExample());
            },
          ),
          UIUtils.getButton(
            "Side Header Example",
            () {
              Get.to(SideHeaderExample());
            },
          ),
          UIUtils.getButton(
            "Animated Header Example",
            () {
              Get.to(AnimatedHeaderExample());
            },
          ),
          UIUtils.getButton(
            "Reverse List Example",
            () {
              Get.to(ReverseExample());
            },
          ),
          UIUtils.getButton(
            "Mixing other slivers",
            () {
              Get.to(MixSliversExample());
            },
          ),
        ],
      ),
    );
  }
}
