import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Example1.dart';
import 'Example2.dart';
import 'Example3.dart';
import 'Example4.dart';
import 'Example5.dart';
import 'Example6.dart';
import 'Example7.dart';
import 'Example8.dart';
import 'SpannableCountCountPage.dart';
import 'SpannableCountExtentPage.dart';
import 'SpannableExtentCountPage.dart';
import 'SpannableExtentExtentPage.dart';
import 'StaggeredCountCountPage.dart';
import 'StaggeredCountExtentPage.dart';
import 'StaggeredExtentCountPage.dart';
import 'StaggeredExtentExtentPage.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuFlutterStaggeredGridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuFlutterStaggeredGridViewScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_staggered_grid_view");
        },
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "Example01",
              () {
                Get.to(Example01());
              },
            ),
            UIUtils.getButton(
              "Example02",
              () {
                Get.to(Example02());
              },
            ),
            UIUtils.getButton(
              "Example03",
              () {
                Get.to(Example03());
              },
            ),
            UIUtils.getButton(
              "Example04",
              () {
                Get.to(Example04());
              },
            ),
            UIUtils.getButton(
              "Example05",
              () {
                Get.to(Example05());
              },
            ),
            UIUtils.getButton(
              "Example06",
              () {
                Get.to(Example06());
              },
            ),
            UIUtils.getButton(
              "Example07",
              () {
                Get.to(Example07());
              },
            ),
            UIUtils.getButton(
              "Example08",
              () {
                Get.to(Example08());
              },
            ),
            UIUtils.getButton(
              "SpannableCountCountPage",
              () {
                Get.to(SpannableCountCountPage());
              },
            ),
            UIUtils.getButton(
              "SpannableCountExtentPage",
              () {
                Get.to(SpannableCountExtentPage());
              },
            ),
            UIUtils.getButton(
              "SpannableExtentCountPage",
              () {
                Get.to(SpannableExtentCountPage());
              },
            ),
            UIUtils.getButton(
              "SpannableExtentExtentPage",
              () {
                Get.to(SpannableExtentExtentPage());
              },
            ),
            UIUtils.getButton(
              "StaggeredCountCountPage",
              () {
                Get.to(StaggeredCountCountPage());
              },
            ),
            UIUtils.getButton(
              "StaggeredCountExtentPage",
              () {
                Get.to(StaggeredCountExtentPage());
              },
            ),
            UIUtils.getButton(
              "StaggeredExtentCountPage",
              () {
                Get.to(StaggeredExtentCountPage());
              },
            ),
            UIUtils.getButton(
              "StaggeredExtentExtentPage",
              () {
                Get.to(StaggeredExtentExtentPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
