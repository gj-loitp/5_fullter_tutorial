import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sample_circular_page.dart';
import 'sample_linear_page.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PercentIndicatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PercentIndicatorScreenState();
  }
}

class _PercentIndicatorScreenState
    extends BaseStatefulState<PercentIndicatorScreen> {
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
        "percent_indicator",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/percent_indicator");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          MaterialButton(
            color: Colors.blueAccent,
            child: Text("Circular Library"),
            onPressed: () => _openPage(SampleCircularPage()),
          ),
          MaterialButton(
            color: Colors.blueAccent,
            child: Text("Linear Library"),
            onPressed: () => _openPage(SampleLinearPage()),
          ),
        ],
      ),
    );
  }

  void _openPage(Widget page) {
    Get.to(page);
  }
}
