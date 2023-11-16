import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class HorizontalCalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HorizontalCalendarScreenState();
  }
}

class _HorizontalCalendarScreenState
    extends BaseStatefulState<HorizontalCalendarScreen> {
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
        "horizontal_calendar",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/horizontal_calendar");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          HorizontalCalendar(
              date: DateTime.now(),
              textColor: Colors.black45,
              backgroundColor: Colors.white,
              selectedColor: Colors.blue,
              onDateSelected: (date) {
                showSnackBarFull("onDateSelected", "$date");
              }),
        ],
      ),
    );
  }
}
