import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/layout/custom_multi_child_layout/custom_multi_child_layout_screen.dart';
import 'package:hello_word/sample/widget/layout/layout_multiple_screen/layout_multiple_screen.dart';

import 'layout_builder_screen.dart';
import 'layout_single_screen.dart';

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
              "CustomMultiChildLayoutScreen",
              () {
                Get.to(CustomMultiChildLayoutScreen());
              },
            ),
            UIUtils.getButton(
              "LayoutBuilderScreen",
              () {
                Get.to(LayoutBuilderScreen());
              },
            ),
            UIUtils.getButton(
              "LayoutMultipleScreen",
              () {
                Get.to(LayoutMultipleScreen());
              },
            ),
            UIUtils.getButton(
              "LayoutSingleScreen",
              () {
                Get.to(LayoutSingleScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
