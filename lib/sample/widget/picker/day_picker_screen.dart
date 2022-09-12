import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DayPickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "DayPickerScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.yellow),
        child: Center(
          child: DayPickerWidget(),
        ),
      ),
    );
  }
}

class DayPickerWidget extends StatefulWidget {
  @override
  _DayPickerWidgetState createState() => _DayPickerWidgetState();
}

class _DayPickerWidgetState extends State<DayPickerWidget> {
  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();

  Future<void> chooseDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      selectableDayPredicate: (datetime) {
        if (datetime.day == 10 || datetime.day == 11 || datetime.day == 12) {
          return false;
        }
        return true;
      },
      initialDatePickerMode: DatePickerMode.day,
      initialDate: _date,
      firstDate: DateTime(2012, 12),
      lastDate: DateTime(2222, 12),
    );
    if (picked != null && picked != _date)
      setState(() => {
            _date = picked,
            print("chooseDate _date " + _date.day.toString()),
          });
    if (picked == null) _date = DateTime.now();
  }

  Future<void> chooseTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    setState(() {
      if (picked != null) {
        _time = picked;
        print("chooseTime _time " + _time.toString());
      }
    });
    if (picked == null) _time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        UIUtils.getButton("Choose date", () => chooseDate(context)),
        UIUtils.getButton("Choose time", () => chooseTime(context)),
      ],
    );
  }
}
