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
class IconButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "IconButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: Container(
          child: Ink(
            decoration: ShapeDecoration(
              color: Colors.green,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.android),
              color: Colors.white,
              onPressed: () {
                print("You Pressed the icon!");
              },
            ),
          ),
        ),
      ),
    );
  }
}
