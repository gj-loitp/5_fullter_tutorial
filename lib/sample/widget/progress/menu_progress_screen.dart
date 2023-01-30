import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/progress/progress_indicators/progress_indicators_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'circular_progress_indicator_app.dart';
import 'linear_progress_indicator_app.dart';
import 'liquid_progress_indicator/menu_liquid_progress_indicator.dart';
import 'percent_indicator/percent_indicator_screen.dart';
import 'progress_indicator_screen.dart';
import 'smooth_page_indicator/smooth_page_indicator_screen.dart';
import 'syncfusion_flutter_gauges/syncfusion_flutter_gauges_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuProgressScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton("liquid_progress_indicator", () {
            Get.to(MenuLiquidProgressIndicatorScreen());
          },
              description:
                  "A progress indicator with water-like effect in Flutter. Works similarly to Flutters own ProgressIndicator."),
          UIUtils.getButton(
            "percent_indicator",
            () {
              Get.to(PercentIndicatorScreen());
            },
            description:
                "Library that allows you to display progress widgets based on percentage, can be Circular or Linear, you can also customize it to your needs.",
          ),
          UIUtils.getButton(
            "progress_indicators",
            () {
              Get.to(ProgressIndicatorsScreen());
            },
            description:
                "A handful collection of some cool progress indicators and text animators.",
          ),
          UIUtils.getButton(
            "smooth_page_indicator",
            () {
              Get.to(SmoothPageIndicatorScreen());
            },
            description:
                "Customizable animated page indicator with a set of built-in effects.",
          ),
          UIUtils.getButton(
            "syncfusion_flutter_gauges",
            () {
              Get.to(SyncfusionFlutterGaugesScreen());
            },
            description:
                "The Flutter gauges library includes a linear gauge and radial gauge (a.k.a. circular gauge) to create modern, interactive, animated gauges and radial sliders.",
          ),
          UIUtils.getButton(
            "CircularProgressIndicatorApp",
            () {
              Get.to(CircularProgressIndicatorApp());
            },
          ),
          UIUtils.getButton(
            "LinearProgressIndicatorApp",
            () {
              Get.to(LinearProgressIndicatorApp());
            },
          ),
          UIUtils.getButton(
            "ProgressIndicatorScreen",
            () {
              Get.to(ProgressIndicatorScreen());
            },
          ),
        ],
      ),
    );
  }
}
