import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/picker/country_picker/country_picker_screen.dart';
import 'package:hello_word/sample/widget/picker/day_picker_screen.dart';
import 'package:hello_word/sample/widget/picker/image_picker/image_picker_screen.dart';

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
        isAlwaysShown: true,
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
