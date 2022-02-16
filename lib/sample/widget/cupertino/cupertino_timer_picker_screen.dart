import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class CupertinoTimerPickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "CupertinoTimerPickerScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: <Widget>[
          UIUtils.getButton("CupertinoPicker", () {
            _showCupertinoPicker(context);
          }),
          UIUtils.getButton("CupertinoDatePicker", () {
            _showCupertinoDatePicker(context);
          }),
          UIUtils.getButton("CupertinoTimerPicker", () {
            _showCupertinoTimerPicker(context);
          }),
        ],
      ),
    );
  }

  void _showCupertinoPicker(BuildContext cxt) {
    final picker = CupertinoPicker(
      itemExtent: 40,
      onSelectedItemChanged: (position) {
        print('The position is $position');
      },
      children: [
        Center(child: Text("0")),
        Center(child: Text("1")),
        Center(child: Text("2")),
        Center(child: Text("3")),
        Center(child: Text("4")),
        Center(child: Text("5")),
        Center(child: Text("6")),
      ],
    );
    showCupertinoModalPopup(
      context: cxt,
      builder: (cxt) {
        return Container(
          color: Colors.red,
          height: 200,
          child: picker,
        );
      },
    );
  }

  void _showCupertinoDatePicker(BuildContext cxt) {
    final picker = CupertinoDatePicker(
      onDateTimeChanged: (date) {
        print("the date is ${date.toString()}");
      },
      initialDateTime: DateTime(1995),
    );
    showCupertinoModalPopup(
      context: cxt,
      builder: (cxt) {
        return Container(
          color: Colors.yellow,
          height: 200,
          child: picker,
        );
      },
    );
  }

  void _showCupertinoTimerPicker(BuildContext cxt) {
    showModalBottomSheet(
      backgroundColor: Colors.green,
      context: cxt,
      builder: (BuildContext context) => CupertinoTimerPicker(
        mode: CupertinoTimerPickerMode.hms,
        initialTimerDuration: Duration(milliseconds: 200),
        minuteInterval: 1,
        secondInterval: 1,
        onTimerDurationChanged: (value) {},
      ),
    );
  }
}
