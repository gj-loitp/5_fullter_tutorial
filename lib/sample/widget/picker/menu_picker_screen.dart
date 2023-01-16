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
import 'flutter_rounded_date_picker/flutter_rounded_date_picker_screen.dart';
import 'horizontal_picker/horizontal_picker_screen.dart';
import 'hsv_color_pickers/hsv_color_pickers_screen.dart';
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
              description:
                  "A flutter package to select a country from a list of countries.",
            ),
            UIUtils.getButton(
              "date_picker_timeline_fixed",
              () {
                Get.to(() => DatePickerTimeLineFixedScreen());
              },
              description:
                  "Flutter Date Picker Library that provides a calendar as a horizontal timeline.",
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
              description:
                  "HSV(HSB)/HSL/RGB/Material color picker inspired by all the good design for your amazing flutter apps.",
            ),
            UIUtils.getButton(
              "flutter_rounded_date_picker",
              () {
                Get.to(() => FlutterRoundedDatePickerScreen());
              },
              description:
                  "The Flutter plugin that help you can choose dates and years with rounded calendars and customizable themes.",
            ),
            UIUtils.getButton(
              "horizontal_picker",
              () {
                Get.to(() => HorizontalPickerScreen());
              },
              description:
                  "You can select your value on Horizontal Picker while scrolling on items.",
            ),
            UIUtils.getButton(
              "hsv_color_pickers",
              () {
                Get.to(() => HsvColorPickersScreen());
              },
              description:
                  "Flutter package for creating customisable Color pickers for HSV Colors",
            ),
            UIUtils.getButton(
              "image_picker",
              () {
                Get.to(() => ImagePickerScreen());
              },
              description:
                  "Flutter plugin for selecting images from the Android and iOS image library, and taking new pictures with the camera.",
            ),
            UIUtils.getButton(
              "numberpicker",
              () {
                Get.to(() => NumberPickerScreen());
              },
              description:
                  "NumberPicker is a widget allowing user to choose numbers by scrolling spinners.",
            ),
          ],
        ),
      ),
    );
  }
}
