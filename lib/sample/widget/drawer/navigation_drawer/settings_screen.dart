import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "SettingsScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
        child: Center(
          child: UIUtils.getButton("SettingsScreen", () => null),
        ),
      ),
    );
  }
}
