import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/string_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_circle/super_circle.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class SuperCircleScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SuperCircleScreenState();
  }
}

class _SuperCircleScreenState extends BaseStatefulState<SuperCircleScreen> {
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
        "super_circle",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://github.com/tplloi/super_circle");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          SuperCircle(
            size: 300,
            rotateBegin: 1.0,
            rotateEnd: 0.0,
            backgroundCircleColor: Colors.black,
            speedRotateCircle: 6000,
            speedChangeShadowColorInner: 2000,
            speedChangeShadowColorOuter: 2000,
            child: Container(
              width: 400,
              height: 400,
              color: Colors.red,
              child: Image.network(
                StringConstants.URL_IMG_1,
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          SuperCircle(
            size: 250,
            rotateBegin: 0.0,
            rotateEnd: 1.0,
            backgroundCircleColor: Colors.white,
            speedRotateCircle: 4000,
            speedChangeShadowColorInner: 3000,
            speedChangeShadowColorOuter: 3000,
            child: Container(
              width: 300,
              height: 300,
              child: Icon(
                Icons.security,
                color: Colors.red,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
