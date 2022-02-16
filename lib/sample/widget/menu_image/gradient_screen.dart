import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

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
