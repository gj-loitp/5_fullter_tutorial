import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
