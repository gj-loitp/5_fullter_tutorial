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
