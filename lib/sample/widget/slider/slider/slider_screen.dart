import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';

import 'slider_theme_widget.dart';
import 'slider_widget.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
