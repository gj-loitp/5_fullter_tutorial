import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AccountScreen extends StatelessWidget {
  static const String routeName = "/account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AccountScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        child: Center(
          child: UIUtils.getText("AccountScreen"),
        ),
      ),
    );
  }
}
