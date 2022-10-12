import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'demo_page.dart';
import 'widgets/demo_1.dart';
import 'widgets/demo_2.dart';
import 'widgets/demo_3.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterOfflineScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterOfflineScreenState();
  }
}

class _FlutterOfflineScreenState
    extends BaseStatefulState<FlutterOfflineScreen> {
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
        "flutter_offline",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_offline");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          ElevatedButton(
            onPressed: () {
              navigate(context, const Demo1());
            },
            child: const Text('Demo 1'),
          ),
          ElevatedButton(
            onPressed: () {
              navigate(context, const Demo2());
            },
            child: const Text('Demo 2'),
          ),
          ElevatedButton(
            onPressed: () {
              navigate(context, const Demo3());
            },
            child: const Text('Demo 3'),
          ),
        ],
      ),
    );
  }

  void navigate(BuildContext context, Widget widget) {
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => DemoPage(child: widget),
      ),
    );
  }
}
