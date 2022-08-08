import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
