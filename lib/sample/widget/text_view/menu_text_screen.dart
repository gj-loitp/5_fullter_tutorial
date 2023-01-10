import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/text_view/marquee_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/text_view/text_animated_text_kit_view.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/text_view/text_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auto_size_text/auto_size_text_screen.dart';
import 'flutter_linkify/flutter_linkify_screen.dart';

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
        thumbVisibility: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "auto_size_text",
              () {
                Get.to(AutoSizeTextScreen());
              },
              description:
                  "Flutter widget that automatically resizes text to fit perfectly within its bounds.",
            ),
            UIUtils.getButton(
              "flutter_linkify",
              () {
                Get.to(FlutterLinkifyScreen());
              },
              description:
                  "Turns text URLs and emails into clickable inline links in text for Flutter.",
            ),
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
