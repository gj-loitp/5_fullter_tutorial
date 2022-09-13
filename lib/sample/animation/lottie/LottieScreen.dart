import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:lottie/lottie.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/roy93group/assets/Mobilo/A.json'),

          // Load an animation and its images from a zip file
          Lottie.asset('assets/lottie/angel.zip'),
        ],
      ),
    );
  }
}
