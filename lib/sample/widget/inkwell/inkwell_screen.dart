import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class InkwellScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "InkwellScreen - check logcat see event",
        () {
          Get.back();
        },
        null,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: InkWell(
          child: Image.network(Constants.dummyImageLink),
          onTap: () {
            print("onTap");
          },
          onDoubleTap: () {
            print("onDoubleTap");
          },
          onHover: (value) {
            print("onDoubleTap value " + value.toString());
          },
          onHighlightChanged: (value) {
            print("onHighlightChanged value " + value.toString());
          },
          onLongPress: () {
            print("onLongPress");
          },
          onTapCancel: () {
            print("onTapCancel");
          },
          onTapDown: (value) {
            print("onTapDown value " + value.toString());
          },
        ),
      ),
    );
  }
}
