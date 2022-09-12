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
class GestureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "GestureScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: GestureWidget(
        title: "Tap Or Double Tap Me",
      ),
    );
  }
}

class GestureWidget extends StatelessWidget {
  GestureWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Text(
          this.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        onTap: () {
          print("onTap");
          _showMaterialDialog(context, "onTap");
        },
        onDoubleTap: () {
          print("onDoubleTap");
          _showMaterialDialog(context, "onDoubleTap");
        },
      ),
    );
  }

  void _showMaterialDialog(
    BuildContext context,
    String title,
  ) {
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text(title),
        content: new Text(
          "context",
          style: TextStyle(fontSize: 18, color: Colors.red),
        ),
        actions: <Widget>[
          UIUtils.getButton("Action", () {
            Navigator.of(context).pop();
          }),
          UIUtils.getButton("Close", () {
            Navigator.of(context).pop();
          }),
        ],
      ),
    );
  }
}
