import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class ExpandedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ExpandedScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: ExpandedWidget(),
      ),
    );
  }
}

class ExpandedWidget extends StatefulWidget {
  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(15),
              color: Colors.green,
              width: 60,
              height: 60,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.yellow,
              width: 60,
              height: 60,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(25),
              color: Colors.black,
              width: 60,
              height: 60,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.green,
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }
}
