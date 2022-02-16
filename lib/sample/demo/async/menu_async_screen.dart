import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'future_builder_screen.dart';
import 'stream_builder_screen.dart';
import 'value_listenable_builder_screen.dart';

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
