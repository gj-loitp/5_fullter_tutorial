import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class GradientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "GradientScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Hello World!",
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
          gradient: UIUtils.getCustomGradient(),
        ),
      ),
    );
  }
}
