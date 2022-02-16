import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class ProgressIndicatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ProgressIndicatorScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            CircularProgressIndicatorWidget(),
            SizedBox(height: 50),
            LinearProgressIndicatorWidget(),
          ],
        ),
      ),
    );
  }
}

class CircularProgressIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: CircularProgressIndicator(),
    );
  }
}

class LinearProgressIndicatorWidget extends StatefulWidget {
  @override
  _LinearProgressIndicatorWidgetState createState() =>
      _LinearProgressIndicatorWidgetState();
}

class _LinearProgressIndicatorWidgetState
    extends State<LinearProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 300,
      child: LinearProgressIndicator(),
    );
  }
}
