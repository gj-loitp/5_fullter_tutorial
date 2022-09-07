import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/drawer/navigation_drawer/navigation_drawer_screen.dart';

import 'drawer/drawer_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuDrawerScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "DrawerScreen",
              () {
                Get.to(DrawerScreen());
              },
            ),
            UIUtils.getButton(
              "NavigationDrawerScreen",
              () {
                Get.to(NavigationDrawerScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
