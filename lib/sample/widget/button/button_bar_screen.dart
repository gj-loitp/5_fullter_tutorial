import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class ButtonBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ButtonBarScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                UIUtils.getButton("Item1", () {}),
                UIUtils.getButton("Item2", () {}),
                UIUtils.getButton("Item3", () {}),
                UIUtils.getButton("Item4", () {}),
                UIUtils.getText(
                  "Item 5",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
