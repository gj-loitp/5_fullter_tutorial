import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/grid/drag_select_grid_view_advance/drag_select_grid_view_advance_screen.dart';
import 'package:hello_word/sample/widget/grid/drag_select_grid_view_sample/drag_select_grid_view_screen.dart';
import 'package:hello_word/sample/widget/grid/flutter_staggered_grid_view/menu_flutter_staggered_grid_view_screen.dart';
import 'package:hello_word/sample/widget/grid/grid_paper/grid_paper_screen.dart';
import 'package:hello_word/sample/widget/grid/infinite_scroll/infinite_scroll_screen.dart';

import 'grid/grid_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuGridScreen",
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
              "DragSelectGridViewAdvanceScreen",
              () {
                Get.to(DragSelectGridViewAdvanceScreen());
              },
            ),
            UIUtils.getButton(
              "DragSelectGridViewSampleScreen",
              () {
                Get.to(DragSelectGridViewSampleScreen());
              },
            ),
            UIUtils.getButton(
              "MenuFlutterStaggeredGridViewScreen",
              () {
                Get.to(MenuFlutterStaggeredGridViewScreen());
              },
            ),
            UIUtils.getButton(
              "GridScreen",
              () {
                Get.to(GridScreen());
              },
            ),
            UIUtils.getButton(
              "GridPaperScreen",
              () {
                Get.to(GridPaperScreen());
              },
            ),
            UIUtils.getButton(
              "InfiniteScrollScreen",
              () {
                Get.to(InfiniteScrollScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
