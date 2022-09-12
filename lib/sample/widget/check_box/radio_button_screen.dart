import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RadioButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "RadioButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: RadioWidget(),
        ),
      ),
    );
  }
}

class RadioWidget extends StatefulWidget {
  @override
  _RadioWidgetState createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  int _selectValue = 1;

  onChange(value) {
    setState(() => _selectValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Radio(
          value: 1,
          groupValue: _selectValue,
          onChanged: (dynamic value) => onChange(value),
        ),
        Radio(
          value: 2,
          groupValue: _selectValue,
          onChanged: (dynamic value) => onChange(value),
        ),
        Radio(
          value: 3,
          groupValue: _selectValue,
          onChanged: (dynamic value) => onChange(value),
        ),
      ],
    );
  }
}
