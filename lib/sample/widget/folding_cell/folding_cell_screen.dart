import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'demos_new.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FoldingCellScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FoldingCellScreenState();
  }
}

class _FoldingCellScreenState extends BaseStatefulState<FoldingCellScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "folding_cell",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/folding_cell");
        },
      ),
      body: ListView(
        // padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          FoldingCellSimpleDemo(),
          FoldingCellMultipleCardsDemo(),
          UIUtils.getButton("FoldingCellListViewDemo", () {
            Get.to(
              FoldingCellListViewDemo(),
            );
          }),
        ],
      ),
    );
  }
}
