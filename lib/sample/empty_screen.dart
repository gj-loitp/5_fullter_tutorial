import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class EmptyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EmptyScreenState();
  }
}

class _EmptyScreenState extends BaseStatefulState<EmptyScreen> {
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
        "EmptyScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://github.com/tplloi/fullter_tutorial");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [],
      ),
    );
  }
}
