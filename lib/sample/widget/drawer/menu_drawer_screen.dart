import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drawer/drawer_screen.dart';
import 'elastic_drawer/elastic_drawer_screen.dart';
import 'flutter_slider_drawer/flutter_slider_drawer_screen.dart';
import 'navigation_drawer/navigation_drawer_screen.dart';

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
        "Drawer",
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
              "elastic_drawer",
              () {
                Get.to(ElasticDrawerScreen());
              },
              description:
                  "Elastic Drawer - elastic panel that slides in horizontally to show fully customize content (navigation links, menu items, notes etc.)",
            ),
            UIUtils.getButton(
              "flutter_slider_drawer",
              () {
                Get.to(FlutterSliderDrawerScreen());
              },
              description:
                  "A Flutter package with custom implementation of the Slider Drawer Menu",
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
