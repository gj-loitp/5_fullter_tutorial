import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../lib/util/UrlLauncherUtils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AwesomeDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AwesomeDialogScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/awesome_dialog");
        },
      ),
      body: Container(),
    );
  }
}
