import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class BatteryPlusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BatteryPlusScreenState();
  }
}

class _BatteryPlusScreenState extends BaseStatefulState<BatteryPlusScreen> {
  final Battery _battery = Battery();
  BatteryState? _batteryState;
  StreamSubscription<BatteryState>? _batteryStateSubscription;

  @override
  void initState() {
    super.initState();
    _batteryStateSubscription =
        _battery.onBatteryStateChanged.listen((BatteryState state) {
      setState(() {
        _batteryState = state;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _batteryStateSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "BatteryPlusScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/batteryPlus");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          Text('$_batteryState'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () async {
          final batteryLevel = await _battery.batteryLevel;
          // ignore: unawaited_futures
          showDialog<void>(
            context: context,
            builder: (_) => AlertDialog(
              content: Text('Battery: $batteryLevel%'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                )
              ],
            ),
          );
        },
        child: const Icon(Icons.battery_unknown),
      ),
    );
  }
}
