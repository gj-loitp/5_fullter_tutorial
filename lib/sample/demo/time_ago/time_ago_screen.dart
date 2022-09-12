import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:timeago/timeago.dart' as timeago;

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class TimeAgoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TimeAgoScreenState();
  }
}

class _TimeAgoScreenState extends BaseStatefulState<TimeAgoScreen> {
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
    final fifteenAgo = new DateTime.now().subtract(new Duration(minutes: 15, seconds: 30));
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "TimeAgoScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/timeago");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getText(timeago.format(fifteenAgo)),
          UIUtils.getText(timeago.format(fifteenAgo, locale: 'en_short')),
          UIUtils.getText(timeago.format(fifteenAgo, locale: 'es')),
        ],
      ),
    );
  }
}
