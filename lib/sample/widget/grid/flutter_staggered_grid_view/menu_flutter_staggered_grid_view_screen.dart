import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/example_1.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/example_2.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/example_3.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/example_4.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/example_5.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/example_6.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/example_7.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/example_8.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/spannable_count_count_page.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/spannable_count_extent_page.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/spannable_extent_count_page.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/spannable_extent_extent_page.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/staggered_count_count_page.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/staggered_count_extent_page.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/staggered_extent_count_page.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/staggered_extent_extent_page.dart';

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
