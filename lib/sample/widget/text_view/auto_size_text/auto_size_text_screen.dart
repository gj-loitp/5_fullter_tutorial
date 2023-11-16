import 'package:auto_size_text/auto_size_text.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AutoSizeTextScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AutoSizeTextScreenState();
  }
}

class _AutoSizeTextScreenState extends BaseStatefulState<AutoSizeTextScreen> {
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
        "auto_size_text",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/auto_size_text");
        },
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.yellow,
          child: AutoSizeText(
            'This string will be automatically resized to fit in 3 lines. fontSize: 30',
            style: TextStyle(fontSize: 30),
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
