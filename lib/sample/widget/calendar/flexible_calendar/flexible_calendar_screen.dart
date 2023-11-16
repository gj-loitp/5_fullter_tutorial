import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flexible_calendar/flexible_calendar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlexibleCalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlexibleCalendarScreenState();
  }
}

class _FlexibleCalendarScreenState
    extends BaseStatefulState<FlexibleCalendarScreen> {
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
        "flexible_calendar",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/flexible_calendar");
        },
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? timeChecking;
  DateTime? timeCheckout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialogCalendar(context);
        },
      ),
    );
  }

  _showDialogCalendar(BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        isDismissible: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
        ),
        builder: (context) {
          return GestureDetector(
            onVerticalDragDown: (_) {},
            child: SingleChildScrollView(
              child: Container(
                height: 500,
                child: FlexibleCalendarView(
                  //limit start date
                  // minimumDate: isChecking || timeChecking == null ? DateTime.now() : timeChecking?.add(Duration(days: 1)),
                  //limit end date
                  // maximumDate: isChecking || timeChecking == null ? DateTime.now() : timeChecking?.add(Duration(days: 1)),
                  initialStartDate: timeChecking,
                  initialEndDate: timeCheckout,
                  startEndDateChange:
                      (DateTime startDateData, DateTime? endDateData) {
                    setState(() {
                      timeChecking = startDateData;
                      timeCheckout = endDateData;
                    });
                  },
                  isConvertDateOfWeekToVietnamese: true,
                  formatMonthTitle: DateFormat("MM, yyyy"),
                  textPreMonthTitle: "Tháng",
                  decorationOfSelectedDay: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                  colorDayInAnotherMonth: Colors.grey,
                  colorInRange: Colors.blue.withOpacity(0.1),
                  borderBackgroundStartDay: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                  borderBackgroundEndDay: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  formatTitleDateOfWeek: "EEE",
                  isSelectedOnlyOneDay: false,
                  colorOfDayInMonth: Colors.black,
                  colorOfSelectedDay: Colors.white,
                  styleOfDay:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          );
        });
  }
}
