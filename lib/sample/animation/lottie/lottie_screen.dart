import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LottieScreenState();
  }
}

class _LottieScreenState extends BaseStatefulState<LottieScreen> {
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
        "LottieScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/lottie");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          // Load a Lottie file from your assets
          Lottie.asset('assets/lottie/LottieLogo1.json'),

          // Load a Lottie file from a remote url
          Lottie.network(
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

          // Load an animation and its images from a zip file
          Lottie.asset('assets/lottie/angel.zip'),
        ],
      ),
    );
  }
}
