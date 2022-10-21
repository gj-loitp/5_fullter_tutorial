import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'circular_progress_indicator_app.dart';
import 'linear_progress_indicator_app.dart';
import 'percent_indicator/percent_indicator_screen.dart';
import 'progress_indicator_screen.dart';

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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "percent_indicator",
              () {
                Get.to(PercentIndicatorScreen());
              },
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
      ),
    );
  }
}
