import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/country_picker/country_picker_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/day_picker_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/image_picker/image_picker_screen.dart';

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
                Get.to(CountryPickerScreen());
              },
            ),
            UIUtils.getButton(
              "DayPickerScreen",
              () {
                Get.to(DayPickerScreen());
              },
            ),
            UIUtils.getButton(
              "ImagePickerScreen",
              () {
                Get.to(ImagePickerScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
