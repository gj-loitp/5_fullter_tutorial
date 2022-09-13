import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                UIUtils.getText(
                  "Item 1",
                ),
                UIUtils.getText(
                  "Item 2",
                ),
                UIUtils.getText(
                  "Item 3",
                ),
                UIUtils.getText(
                  "Item 4",
                ),
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
