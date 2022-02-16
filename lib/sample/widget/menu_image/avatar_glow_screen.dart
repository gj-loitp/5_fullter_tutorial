import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AvatarGlowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AvatarGlowScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: AvatarGlow(
          glowColor: Colors.green,
          endRadius: 60,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          child: Image.asset(
            "assets/images/ic_success.png",
            height: 60,
            width: 60,
          ),
        ),
      ),
    );
  }
}
