import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'carousel_slider/carousel_slider_screen.dart';
import 'contact_page_screen/ContactPageScreen.dart';
import 'draggable_scrollbar_demo/DraggableScrollbarDemoScreen.dart';
import 'flutter_sticky_header/FlutterStickyHeaderScreen.dart';
import 'grouped_list/grouped_list_screen.dart';
import 'header_body_footer/HeaderBodyFooterScreen.dart';
import 'infinite_scroll_pagination/infinite_scroll_pagination_screen.dart';
import 'lazy_load_scroll_view/LazyLoadScrollViewScreen.dart';
import 'list_body_widget/ListBodyScreen.dart';
import 'list_random_words/RandomWordsScreen.dart';
import 'list_search/list_view_search_screen.dart';
import 'list_title_widget/ListTileScreen.dart';
import 'load_more/ListViewLoadMoreScreen.dart';
import 'pull_to_refresh/pull_to_refresh_screen.dart';
import 'scroll_to_index/scroll_to_index_screen.dart';
import 'scrollable_positioned_list/scrollable_positioned_list_screen.dart';
import 'sticky_headers/sticky_headers_screen.dart';

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
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          UIUtils.getButton(
            "carousel_slider",
            () {
              Get.to(() => CarouselSliderScreen());
            },
            description:
                "A carousel slider widget, support infinite scroll and custom child widget.",
          ),
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
            "flutter_sticky_header",
            () {
              Get.to(() => FlutterStickyHeaderScreen());
            },
            description:
                "Flutter implementation of sticky headers as a sliver. Use it in a CustomScrollView.",
          ),
          UIUtils.getButton(
            "infinite_scroll_pagination",
            () {
              Get.to(() => InfiniteScrollPaginationScreen());
            },
            description:
                "Lazily load and display pages of items as the user scrolls down your screen.",
          ),
          UIUtils.getButton(
            "grouped_list",
            () {
              Get.to(() => GroupedListScreen());
            },
            description:
                "A Flutter ListView where the list items can be grouped into sections.",
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
          UIUtils.getButton(
            "scroll_to_index",
            () {
              Get.to(() => ScrollToIndexScreen());
            },
            description:
                "Scroll to a specific child of any scrollable widget in Flutter",
          ),
          UIUtils.getButton(
            "scrollable_positioned_list",
            () {
              Get.to(() => ScrollablePositionedListScreen());
            },
            description:
                "A list with helper methods to programmatically scroll to an item.",
          ),
          UIUtils.getButton(
            "sticky_headers",
            () {
              Get.to(() => StickyHeadersScreen());
            },
            description:
                "Flutter Sticky Headers - Lets you place headers on scrollable content that will stick to the top of the container whilst the content is scrolled.",
          ),
        ],
      ),
    );
  }
}
