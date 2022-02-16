import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/bottom_bar/bottom_bar/bottom_app_bar_screen.dart';
import 'package:hello_word/sample/widget/bottom_bar/tab_bar/tab_bar_screen.dart';
import 'package:hello_word/sample/widget/bottom_bar/tab_bar_2/tab_bar_screen_2.dart';

class MenuBottomBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuBottomBarScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "BottomAppBarScreen",
              () {
                Get.to(BottomAppBarScreen());
              },
            ),
            UIUtils.getButton(
              "TabBarScreen",
              () {
                Get.to(TabBarScreen());
              },
            ),
            UIUtils.getButton(
              "TabBarScreen2",
              () {
                Get.to(TabBarScreen2());
              },
            ),
          ],
        ),
      ),
    );
  }
}
