import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class CupertinoActionSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "CupertinoActionSheetScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: UIUtils.getButton(
          "Show ActionSheet",
          () {
            showActionSheet(context);
          },
        ),
      ),
    );
  }

  Future<void> showActionSheet(BuildContext context) async {
    return showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text('ActionSheet'),
          message: Text('ActionSheet message'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('ActionSheet Item1'),
              onPressed: () {
                Get.back();
              },
            ),
            CupertinoActionSheetAction(
              child: Text('ActionSheet Item2'),
              onPressed: () {
                Get.back();
              },
            ),
            CupertinoActionSheetAction(
              child: Text('ActionSheet Item3'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            isDefaultAction: true,
            child: Text('Cancel'),
            onPressed: () {
              Get.back();
            },
          ),
        );
      },
    );
  }
}
