import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'after_layout/after_layout_screen.dart';
import 'custom_multi_child_layout/custom_multi_child_layout_screen.dart';
import 'layout_builder_screen.dart';
import 'layout_multiple_screen/layout_multiple_screen.dart';
import 'layout_single_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuLayoutScreen",
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
              "after_layout",
              () {
                Get.to(() => AfterLayoutScreen());
              },
              description:
                  "Execute code after the first layout of your widget has been performed, i.e. after the first frame has been displayed.",
            ),
            UIUtils.getButton(
              "CustomMultiChildLayoutScreen",
              () {
                Get.to(() => CustomMultiChildLayoutScreen());
              },
            ),
            UIUtils.getButton(
              "LayoutBuilderScreen",
              () {
                Get.to(() => LayoutBuilderScreen());
              },
            ),
            UIUtils.getButton(
              "LayoutMultipleScreen",
              () {
                Get.to(() => LayoutMultipleScreen());
              },
            ),
            UIUtils.getButton(
              "LayoutSingleScreen",
              () {
                Get.to(() => LayoutSingleScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
