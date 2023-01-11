import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calendar_appbar/calendar_appbar_screen.dart';
import 'calendar_view/calendar_view_screen.dart';
import 'flexible_calendar/flexible_calendar_screen.dart';
import 'horizontal_calendar/horizontal_calendar_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuCalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "calendar",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        thumbVisibility: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "calendar_appbar",
              () {
                Get.to(() => CalendarAppbarScreen());
              },
              description:
                  "Flutter package for custom AppBar with full calendar view with many new features!",
            ),
            UIUtils.getButton(
              "calendar_view",
              () {
                Get.to(() => CalendarViewScreen());
              },
              description:
                  "A Flutter package allows you to easily implement all calendar UI and calendar event functionality.",
            ),
            UIUtils.getButton(
              "flexible_calendar",
              () {
                Get.to(() => FlexibleCalendarScreen());
              },
              description:
                  "A flexible libray for Custom Calendar, you can selected one day, range days, limited dates, beautiful interface and more.",
            ),
            UIUtils.getButton(
              "horizontal_calendar",
              () {
                Get.to(() => HorizontalCalendarScreen());
              },
              description:
                  "A flutter plugin to show horizontal view of calendar with date picker.",
            ),
          ],
        ),
      ),
    );
  }
}
