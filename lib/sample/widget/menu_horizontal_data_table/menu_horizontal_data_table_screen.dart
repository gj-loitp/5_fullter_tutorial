import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'advance/booking_view.dart';
import 'simple/horizontal_data_table_screen.dart';

class MenuHorizontalDataTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuHorizontalDataTableScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          UIUtils.getButton(
            "BookingView",
            () {
              Get.to(BookingView());
            },
          ),
          UIUtils.getButton(
            "HorizontalDataTableScreen",
            () {
              Get.to(HorizontalDataTableScreen());
            },
          ),
        ],
      ),
    );
  }
}
