import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../lib/core/base_stateful_state.dart';
import '../../lib/util/ui_utils.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuFuncScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuFuncScreenState();
  }
}

class _MenuFuncScreenState extends BaseStatefulState<MenuFuncScreen> {
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
        "Fuction menu",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchPolicy();
        },
        iconData: Icons.policy,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(
          DimenConstants.marginPaddingMedium,
          DimenConstants.marginPaddingMedium,
          DimenConstants.marginPaddingMedium,
          DimenConstants.marginPaddingLarge,
        ),
        children: [
          UIUtils.getButton(
            "Animation",
            () {
              // Get.to(MenuAnimationScreen());
            },
          ),
        ],
      ),
    );
  }
}
