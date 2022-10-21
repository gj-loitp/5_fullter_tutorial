import 'package:avatar_glow/avatar_glow.dart';
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
