import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'FutureBuilderScreen.dart';
import 'StreamBuilderScreen.dart';
import 'ValueListenableBuilderScreen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuAsyncScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuAsyncScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "FutureBuilderScreen",
              () => {
                Get.to(FutureBuilderScreen()),
              },
            ),
            UIUtils.getButton(
              "StreamBuilderScreen",
              () => {
                Get.to(StreamBuilderScreen()),
              },
            ),
            UIUtils.getButton(
              "ValueListenableBuilderScreen",
              () => {
                Get.to(ValueListenableBuilderScreen()),
              },
            ),
          ],
        ),
      ),
    );
  }
}
