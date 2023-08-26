import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class WakeLockScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WakeLockScreenState();
  }
}

class _WakeLockScreenState extends BaseStatefulState<WakeLockScreen> {
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
        "wakelock",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/wakelock");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getText(
              "Plugin that allows you to keep the device screen awake, i.e. prevent the screen from sleeping."
              "The plugin allows you to enable and toggle the screen wakelock, which prevents the screen from turning off automatically."
              "Essentially, this allows you to keep the device awake, i.e. prevent the device from sleeping."),
          UIUtils.getButton("Enable", () {
            WakelockPlus.enable();
            _show();
          }),
          UIUtils.getButton("Disable", () {
            WakelockPlus.disable();
            _show();
          }),
        ],
      ),
    );
  }

  Future<void> _show() async {
    bool wakelockEnabled = await WakelockPlus.enabled;
    showSnackBarFull("Wakelock", "wakelockEnabled $wakelockEnabled");
  }
}
