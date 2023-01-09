import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../lib/util/url_launcher_utils.dart';
import 'liquid_circular_progress_indicator_page.dart';
import 'liquid_custom_progress_indicator_page.dart';
import 'liquid_linear_progress_indicator_page.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuLiquidProgressIndicatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "liquid_progress_indicator",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/liquid_progress_indicator");
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UIUtils.getButton(
              "LiquidCircularProgressIndicatorPage",
              () {
                Get.to(LiquidCircularProgressIndicatorPage());
              },
            ),
            UIUtils.getButton(
              "LiquidCustomProgressIndicatorPage",
              () {
                Get.to(LiquidCustomProgressIndicatorPage());
              },
            ),
            UIUtils.getButton(
              "LiquidLinearProgressIndicatorPage",
              () {
                Get.to(LiquidLinearProgressIndicatorPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
