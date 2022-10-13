import 'package:com.roy93group.flutter_tutorial/lib/common/const/Constants.dart';
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
