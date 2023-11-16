import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class HorizontalPickerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HorizontalPickerScreenState();
  }
}

class _HorizontalPickerScreenState
    extends BaseStatefulState<HorizontalPickerScreen> {
  double? newValue;

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
        "horizontal_picker",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/horizontal_picker/");
        },
      ),
      body: ListView(
        padding: EdgeInsets.only(top: DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          HorizontalPicker(
            minValue: 0,
            maxValue: 10,
            divisions: 10,
            height: 120,
            onChanged: (value) {},
          ),
          Divider(),
          HorizontalPicker(
            minValue: 0,
            maxValue: 10,
            divisions: 10,
            height: 120,
            suffix: " \u00b0C",
            showCursor: false,
            backgroundColor: Colors.lightBlue.shade50,
            activeItemTextColor: Colors.blue.shade800,
            passiveItemsTextColor: Colors.blue.shade300,
            onChanged: (value) {},
          ),
          Divider(),
          HorizontalPicker(
            minValue: -10,
            maxValue: 55,
            divisions: 600,
            height: 120,
            suffix: " cm",
            showCursor: false,
            backgroundColor: Colors.grey.shade900,
            activeItemTextColor: Colors.white,
            passiveItemsTextColor: Colors.amber,
            onChanged: (value) {
              setState(() {
                newValue = value;
              });
            },
          ),
          Text(newValue.toString()),
        ],
      ),
    );
  }
}
