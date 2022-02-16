import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'circular_progress_indicator_app.dart';
import 'linear_progress_indicator_app.dart';
import 'progress_indicator_screen.dart';

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
