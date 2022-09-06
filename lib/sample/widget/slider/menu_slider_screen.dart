import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/slider/flutter_slidable/flutter_slidable_screen.dart';

import 'range/range_slider_screen.dart';
import 'slider/slider_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuSliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuSliderScreen",
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
              "FlutterSlidableScreen",
              () {
                Get.to(FlutterSlidableScreen());
              },
            ),
            UIUtils.getButton(
              "RangeSliderScreen",
              () {
                Get.to(RangeSliderScreen());
              },
            ),
            UIUtils.getButton(
              "SliderScreen",
              () {
                Get.to(SliderScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
