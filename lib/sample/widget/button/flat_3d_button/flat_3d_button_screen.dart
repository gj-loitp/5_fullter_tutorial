import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flat_3d_button/flat_3d_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Flat3dButtonScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Flat3dButtonScreenState();
  }
}

class _Flat3dButtonScreenState extends BaseStatefulState<Flat3dButtonScreen> {
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
        "Flat3dButtonScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript("https://pub.dev/packages/flat_3d_button");
        },
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flat3dButton.text(
              onPressed: () => print('clicked'),
              text: 'Flat',
            ),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            Flat3dButton.icon(
              onPressed: () => print('clicked'),
              icon: Icons.rocket,
            ),
          ],
        ),
      ),
    );
  }
}
