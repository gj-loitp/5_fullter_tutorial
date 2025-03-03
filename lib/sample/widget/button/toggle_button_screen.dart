import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ToggleButtonScreen extends StatefulWidget {
  @override
  _ToggleButtonScreenState createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  var _listSelected = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ToggleButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: ToggleButtons(
          children: [
            Icon(Icons.account_balance),
            Icon(Icons.backup),
            Icon(Icons.calendar_today),
            Text('Text'),
          ],
          onPressed: (int index) {
            print("index " + index.toString());
            setState(() => _listSelected[index] = !_listSelected[index]);
          },
          isSelected: _listSelected,
        ),
      ),
    );
  }
}
