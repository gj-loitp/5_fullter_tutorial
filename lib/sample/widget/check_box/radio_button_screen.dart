import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

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
