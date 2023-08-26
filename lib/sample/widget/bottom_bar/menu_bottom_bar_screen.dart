import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animated_bottom_navigation_bar/animated_bottom_navigation_bar_screen.dart';
import 'bottom_bar/bottom_app_bar_screen.dart';
import 'bottom_bar_with_sheet/bottom_bar_with_sheet_screen.dart';
import 'bottom_navy_bar/bottom_navy_bar_screen.dart';
import 'circular_bottom_navigation/circular_bottom_navigation_screen.dart';
import 'convex_bottom_bar/convex_bottom_bar_screen.dart';
import 'curved_navigation_bar/curved_navigation_bar_screen.dart';
import 'flutter_snake_navigationbar/flutter_snake_navigationbar_screen.dart';
import 'tab_bar/tab_bar_screen.dart';
import 'tab_bar2/tab_bar_screen2.dart';

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
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "animated_bottom_navigation_bar",
            () {
              Get.to(() => AnimatedBottomNavigationBarScreen());
            },
            description:
                "Animated Bottom Navigation Bar Widget implementation inspired by https://dribbble.com/shots/7134849-Simple-Tab-Bar-Animation",
          ),
          UIUtils.getButton(
            "bottom_bar_with_sheet",
            () {
              Get.to(() => BottomBarWithSheetScreen());
            },
            description:
                "This package help you to create bottom bar with FloatingActionButton which buld BottomSheet widget on every page.",
          ),
          UIUtils.getButton(
            "bottom_navy_bar",
            () {
              Get.to(BottomNavyBarScreen());
            },
            description:
                "A beautiful and animated bottom navigation. The navigation bar use your current theme, but you are free to customize it.",
          ),
          UIUtils.getButton(
            "circular_bottom_navigation",
            () {
              Get.to(CircularBottomNavigationScreen());
            },
            description: "Circular Bottom Navigation (or maybe a tab bar)",
          ),
          UIUtils.getButton(
            "BottomAppBarScreen",
            () {
              Get.to(BottomAppBarScreen());
            },
          ),
          UIUtils.getButton(
            "convex_bottom_bar",
            () {
              Get.to(ConvexBottomBarScreen());
            },
            description:
                "A Flutter package which implements a ConvexAppBar to show a convex tab in the bottom bar. Theming supported.",
          ),
          UIUtils.getButton(
            "curved_navigation_bar",
            () {
              Get.to(CurvedNavigationBarScreen());
            },
            description:
                "Stunning Animating Curved Shape Navigation Bar. Adjustable color, background color, animation curve, animation duration.",
          ),
          UIUtils.getButton(
            "flutter_snake_navigationbar",
            () {
              Get.to(FlutterSnakeNavigationbarScreen());
            },
            description:
                "Flutter bottom navigation bar widget with snake animation on change item.",
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
    );
  }
}
