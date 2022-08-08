import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/text_view/marquee_screen.dart';
import 'package:hello_word/sample/widget/text_view/text_animated_text_kit_view.dart';
import 'package:hello_word/sample/widget/text_view/text_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuTextScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        isAlwaysShown: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "MarqueeScreen",
              () {
                Get.to(MarqueeScreen());
              },
            ),
            UIUtils.getButton(
              "TextAnimatedTextKitScreen",
              () {
                Get.to(TextAnimatedTextKitScreen());
              },
            ),
            UIUtils.getButton(
              "TextScreen",
              () {
                Get.to(TextScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
