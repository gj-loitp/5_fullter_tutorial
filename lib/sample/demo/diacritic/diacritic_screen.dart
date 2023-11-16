import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DiacriticScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DiacriticScreenState();
  }
}

class _DiacriticScreenState extends BaseStatefulState<DiacriticScreen> {
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
        "diacritic",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/diacritic");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getText(
              "Removes common accents and diacritical signs from a string by replacing them with an equivalent character"),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          UIUtils.getText("árvíztűrő tükörfúrógép"),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          UIUtils.getText("=>"),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          UIUtils.getText(removeDiacritics('árvíztűrő tükörfúrógép')),
        ],
      ),
    );
  }
}
