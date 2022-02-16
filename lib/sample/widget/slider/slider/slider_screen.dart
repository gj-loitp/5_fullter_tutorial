import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'slider_theme_widget.dart';
import 'slider_widget.dart';

class SliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "SliderScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SliderWidget(),
            SizedBox(
              height: 100,
            ),
            SliderThemeWidget()
          ],
        ),
      ),
    );
  }
}
