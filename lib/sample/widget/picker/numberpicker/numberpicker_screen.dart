import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ex/main.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class NumberPickerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NumberPickerScreenState();
  }
}

class _NumberPickerScreenState extends BaseStatefulState<NumberPickerScreen> {
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
        "numberpicker",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/numberpicker");
        },
      ),
      body: MyHomePage(),
    );
  }
}
