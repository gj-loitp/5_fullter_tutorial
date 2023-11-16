import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/picker/wechat_camera_picker/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
String? packageVersion;

class WechatCameraPickerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WechatCameraPickerScreenState();
  }
}

class _WechatCameraPickerScreenState
    extends BaseStatefulState<WechatCameraPickerScreen> {
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
        "wechat_camera_picker",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/wechat_camera_picker");
        },
      ),
      body: SplashPage(),
    );
  }
}
