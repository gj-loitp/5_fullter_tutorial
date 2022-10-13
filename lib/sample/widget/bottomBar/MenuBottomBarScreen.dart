import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/bottomBar/bottomBar/BottomAppBarScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/bottomBar/tabBar/TabBarScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'TabBar2/TabBarScreen2.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuBottomBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuBottomBarScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "BottomAppBarScreen",
              () {
                Get.to(BottomAppBarScreen());
              },
            ),
            UIUtils.getButton(
              "TabBarScreen",
              () {
                Get.to(TabBarScreen());
              },
            ),
            UIUtils.getButton(
              "TabBarScreen2",
              () {
                Get.to(TabBarScreen2());
              },
            ),
          ],
        ),
      ),
    );
  }
}
