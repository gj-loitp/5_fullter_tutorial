import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';

class TdkBouncingWidgetScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TdkBouncingWidgetScreenState();
  }
}

class _TdkBouncingWidgetScreenState extends BaseStatefulState<TdkBouncingWidgetScreen> {
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
        "tdk_bouncingwidget",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser("https://pub.dev/packages/tdk_bouncingwidget");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          /// Bouncing Wiget only Bouncing IN
          BouncingWidgetInOut(
            onPressed: () {},
            bouncingType: BouncingType.bounceInOnly,
            child: Container(
                margin: const EdgeInsets.all(10),
                height: 60,
                width: 200,
                child: const Card(
                  color: Colors.red,
                  child: Center(
                      child:
                          Text("Bouncing In only", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                )),
          ),

          /// Bouncing Wiget only Bouncing OUT
          BouncingWidgetInOut(
            onPressed: () {},
            bouncingType: BouncingType.bounceOutOnly,
            child: Container(
                margin: const EdgeInsets.all(10),
                height: 60,
                width: 200,
                child: const Card(
                  color: Colors.blue,
                  child: Center(
                      child: Text("Bouncing out only",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                )),
          ),

          /// Bouncing Wiget  Bouncing both IN and OUT
          BouncingWidgetInOut(
            onPressed: () {},
            bouncingType: BouncingType.bounceInAndOut,
            child: Container(
                margin: const EdgeInsets.all(10),
                height: 60,
                width: 200,
                child: const Card(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Bouncing In and out",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
