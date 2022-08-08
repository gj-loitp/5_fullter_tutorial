import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ClayContainersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ClayContainersScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/clay_containers");
        },
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          Container(
            color: baseColor,
            child: Center(
              child: ClayContainer(
                color: baseColor,
                height: 200,
                width: 200,
              ),
            ),
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          ClayContainer(
            color: baseColor,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClayText("Seize the Clay!", emboss: true, size: 40),
            ),
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          ClayContainer(
            color: baseColor,
            height: 150,
            width: 150,
            borderRadius: 50,
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          ClayContainer(
            color: baseColor,
            height: 150,
            width: 150,
            customBorderRadius: BorderRadius.only(
                topRight: Radius.elliptical(150, 150),
                bottomLeft: Radius.circular(50)),
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          ClayContainer(
            emboss: true,
            color: baseColor,
            height: 150,
            width: 150,
            borderRadius: 50,
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          ClayContainer(
            color: baseColor,
            height: 150,
            width: 150,
            borderRadius: 75,
            depth: 40,
            spread: 40,
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClayContainer(
                color: baseColor,
                height: 150,
                width: 150,
                borderRadius: 75,
                curveType: CurveType.concave,
              ),
              SizedBox(width: 50),
              ClayContainer(
                color: baseColor,
                height: 150,
                width: 150,
                borderRadius: 75,
                curveType: CurveType.none,
              ),
            ],
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
        ],
      ),
    );
  }
}
