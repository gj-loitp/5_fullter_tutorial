import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'DragSelectGridViewAdvance/DragSelectGridViewAdvanceScreen.dart';
import 'dragSelectGridViewSample/DragSelectGridViewScreen.dart';
import 'flutterStaggeredGridView/MenuFlutterStaggeredGridViewScreen.dart';
import 'grid/GridScreen.dart';
import 'gridPaper/GridPaperScreen.dart';
import 'infiniteScroll/InfiniteScrollScreen.dart';

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
