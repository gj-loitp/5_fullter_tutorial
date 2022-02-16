
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:hello_word/sample/widget/list/flutter_sticky_header/animated_header.dart';
import 'package:hello_word/sample/widget/list/flutter_sticky_header/grid.dart';
import 'package:hello_word/sample/widget/list/flutter_sticky_header/list.dart';
import 'package:hello_word/sample/widget/list/flutter_sticky_header/mix_slivers.dart';
import 'package:hello_word/sample/widget/list/flutter_sticky_header/not_sticky.dart';
import 'package:hello_word/sample/widget/list/flutter_sticky_header/reverse.dart';
import 'package:hello_word/sample/widget/list/flutter_sticky_header/side_header.dart';

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
        "FlutterStickyHeaderScreen",
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
