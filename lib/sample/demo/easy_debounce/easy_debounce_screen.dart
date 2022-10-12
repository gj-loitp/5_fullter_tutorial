import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class EasyDebounceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EasyDebounceScreenState();
  }
}

class EasyDebounceScreenState extends BaseStatefulState<EasyDebounceScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "easy_debounce",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/easy_debounce");
        },
      ),
      body: CupertinoScrollbar(
        thumbVisibility: true,
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          children: [
            UIUtils.getText(
                "An extremely easy-to-use method call debouncer package for Dart/Flutter."
                "\nDebouncing is needed when there is a possibility of multiple calls to a method being made within a short duration of each other, and it's desireable that only the last of those calls actually invoke the target method."
                "\nSo basically each call starts a timer, and if another call happens before the timer executes, the timer is reset and starts waiting for the desired duration again. When the timer finally does time out, the target method is invoked."),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            UIUtils.getButton(
              "Click",
              () {
                EasyDebounce.debounce(
                  'my-debouncer', // <-- An ID for this particular debouncer
                  Duration(milliseconds: 500), // <-- The debounce duration
                  () {
                    showSnackBarFull("title", "message");
                  }, // <-- The target method
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
