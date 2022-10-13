import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/country_picker/country_picker_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/day_picker/day_picker_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/image_picker/image_picker_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'date_picker_timeline_fixed/date_picker_timeline_fixed_screen.dart';
import 'file_picker/file_picker_demo.dart';
import 'flutter_colorpicker/flutter_colorpicker_screen.dart';
import 'numberpicker/numberpicker_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuPickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuPickerScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        thumbVisibility: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "country_picker",
              () {
                Get.to(() => CountryPickerScreen());
              },
            ),
            UIUtils.getButton(
              "date_picker_timeline_fixed",
              () {
                Get.to(() => DatePickerTimeLineFixedScreen());
              },
            ),
            UIUtils.getButton(
              "DayPickerScreen",
                  () {
                Get.to(() => DayPickerScreen());
              },
            ),
            UIUtils.getButton(
              "FilePickerDemo",
              () {
                Get.to(() => FilePickerDemo());
              },
            ),
            UIUtils.getButton(
              "flutter_colorpicker",
              () {
                Get.to(() => FlutterColorPickerScreen());
              },
            ),
            UIUtils.getButton(
              "ImagePickerScreen",
              () {
                Get.to(() => ImagePickerScreen());
              },
            ),
            UIUtils.getButton(
              "numberpicker",
                  () {
                Get.to(() => NumberPickerScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
