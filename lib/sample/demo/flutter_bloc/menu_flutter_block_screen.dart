import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/flutter_bloc/counter/flutter_bloc_counter_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/flutter_bloc/cubit/cubit_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuFlutterBlockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuFlutterBlockScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_bloc");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "FlutterBlockCounterScreen",
            () {
              Get.to(FlutterBlockCounterScreen());
            },
          ),
          UIUtils.getButton(
            "CubitScreen",
            () {
              Get.to(CubitScreen());
            },
          ),
        ],
      ),
    );
  }
}
