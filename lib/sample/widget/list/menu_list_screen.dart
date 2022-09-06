import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/contact_page_screen/contact_page_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/draggable_scrollbar_demo/draggable_scrollbar_demo_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/flutter_sticky_header/flutter_sticky_header_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/header_body_footer/header_body_footer_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/lazy_load_scrollview/lazy_load_scrollview_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/list_body_widget/list_body_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/list_random_words/random_words_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/list_search/list_view_search_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/list_title_widget/list_tile_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/load_more/list_view_load_more_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/list/pull_to_refresh/pull_to_refresh_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          children: <Widget>[
            UIUtils.getButton(
              "ContactPageScreen",
              () {
                Get.to(ContactPageScreen());
              },
            ),
            UIUtils.getButton(
              "DraggableScrollBarDemo",
              () {
                Get.to(DraggableScrollBarDemo());
              },
            ),
            UIUtils.getButton(
              "FlutterStickyHeaderScreen",
              () {
                Get.to(FlutterStickyHeaderScreen());
              },
            ),
            UIUtils.getButton(
              "HeaderBodyFooterScreen",
              () {
                Get.to(HeaderBodyFooterScreen());
              },
            ),
            UIUtils.getButton(
              "RandomWordsScreen",
              () {
                Get.to(RandomWordsScreen());
              },
            ),
            UIUtils.getButton(
              "ListViewSearchScreen",
              () {
                Get.to(ListViewSearchScreen());
              },
            ),
            UIUtils.getButton(
              "LazyLoadScrollViewScreen",
              () {
                Get.to(LazyLoadScrollViewScreen());
              },
            ),
            UIUtils.getButton(
              "ListBodyScreen",
              () {
                Get.to(ListBodyScreen());
              },
            ),
            UIUtils.getButton(
              "ListTileScreen",
              () {
                Get.to(ListTileScreen());
              },
            ),
            UIUtils.getButton(
              "ListViewLoadMoreScreen",
              () {
                Get.to(ListViewLoadMoreScreen());
              },
            ),
            UIUtils.getButton(
              "PullToRefreshScreen",
              () {
                Get.to(PullToRefreshScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
