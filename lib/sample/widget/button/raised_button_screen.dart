import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class RaisedButtonScreen extends StatefulWidget {
  @override
  _RaisedButtonScreenState createState() => _RaisedButtonScreenState();
}

class _RaisedButtonScreenState extends State<RaisedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "RaisedButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {},
          child: Text('RaisedButton'),
        ),
      ),
    );
  }
}
