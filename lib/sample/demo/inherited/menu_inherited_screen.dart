import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'inherited_model_screen.dart';
import 'inherited_widget_screen.dart';

class MenuInheritedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuInheritedScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "InheritedModelScreen",
              () {
                Get.to(InheritedModelScreen());
              },
            ),
            UIUtils.getButton(
              "InheritedWidgetScreen",
              () {
                Get.to(InheritedWidgetScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
