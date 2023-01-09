import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/pullToRefresh/PullToRefreshScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'contactPageScreen/ContactPageScreen.dart';
import 'draggableScrollbarDemo/DraggableScrollbarDemoScreen.dart';
import 'flutterStickyHeader/FlutterStickyHeaderScreen.dart';
import 'headerBodyFooter/HeaderBodyFooterScreen.dart';
import 'lazyLoadScrollView/LazyLoadScrollViewScreen.dart';
import 'listBodyWidget/ListBodyScreen.dart';
import 'listRandomWords/RandomWordsScreen.dart';
import 'listSearch/ListViewSearchScreen.dart';
import 'listTitleWidget/ListTileScreen.dart';
import 'loadMore/ListViewLoadMoreScreen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuListScreen",
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
          children: [
            UIUtils.getButton(
              "ContactPageScreen",
              () {
                Get.to(() => ContactPageScreen());
              },
            ),
            UIUtils.getButton(
              "DraggableScrollBarDemo",
              () {
                Get.to(() => DraggableScrollBarDemo());
              },
            ),
            UIUtils.getButton(
              "FlutterStickyHeaderScreen",
              () {
                Get.to(() => FlutterStickyHeaderScreen());
              },
              description:
                  "Flutter implementation of sticky headers as a sliver. Use it in a CustomScrollView.",
            ),
            UIUtils.getButton(
              "HeaderBodyFooterScreen",
              () {
                Get.to(() => HeaderBodyFooterScreen());
              },
            ),
            UIUtils.getButton(
              "RandomWordsScreen",
              () {
                Get.to(() => RandomWordsScreen());
              },
            ),
            UIUtils.getButton(
              "ListViewSearchScreen",
              () {
                Get.to(() => ListViewSearchScreen());
              },
            ),
            UIUtils.getButton(
              "lazy_load_scrollview",
              () {
                Get.to(() => LazyLoadScrollViewScreen());
              },
              description:
                  "A wrapper for a ScrollView that will trigger a callback when the bottom of the page is reached",
            ),
            UIUtils.getButton(
              "ListBodyScreen",
              () {
                Get.to(() => ListBodyScreen());
              },
            ),
            UIUtils.getButton(
              "ListTileScreen",
              () {
                Get.to(() => ListTileScreen());
              },
            ),
            UIUtils.getButton(
              "ListViewLoadMoreScreen",
              () {
                Get.to(() => ListViewLoadMoreScreen());
              },
            ),
            UIUtils.getButton(
              "pull_to_refresh",
              () {
                Get.to(() => PullToRefreshScreen());
              },
              description:
                  "a widget provided to the flutter scroll component drop-down refresh and pull up load.",
            ),
          ],
        ),
      ),
    );
  }
}
