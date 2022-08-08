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
class OutlineButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "OutlineButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: UIUtils.getOutlineButton(
          "OutlineButton",
          () {
            Get.back();
          },
        ),
      ),
    );
  }
}
