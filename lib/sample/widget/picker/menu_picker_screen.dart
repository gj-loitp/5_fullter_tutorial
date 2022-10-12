import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/country_picker/country_picker_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/day_picker/day_picker_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/image_picker/image_picker_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'date_picker_timeline_fixed/date_picker_timeline_fixed_screen.dart';
import 'file_picker/file_picker_demo.dart';

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
              "CountryPickerScreen",
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
              "FilePickerDemo",
              () {
                Get.to(() => FilePickerDemo());
              },
            ),
            UIUtils.getButton(
              "DayPickerScreen",
              () {
                Get.to(() => DayPickerScreen());
              },
            ),
            UIUtils.getButton(
              "ImagePickerScreen",
              () {
                Get.to(() => ImagePickerScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
