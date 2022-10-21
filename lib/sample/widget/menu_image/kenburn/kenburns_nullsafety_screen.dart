import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class KenburnsNullSafetyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _KenburnsNullSafetyScreenState();
  }
}

class _KenburnsNullSafetyScreenState
    extends BaseStatefulState<KenburnsNullSafetyScreen> {
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
        "kenburns_nullsafety",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/kenburns_nullsafety");
        },
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.only(top: DimenConstants.marginPaddingMedium),
            height: 300,
            child: KenBurns(
              child: Image.network(
                "https://live.staticflickr.com/8381/28816409494_89aae208c3_b.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 300,
            margin: EdgeInsets.only(top: DimenConstants.marginPaddingMedium),
            child: KenBurns(
              minAnimationDuration: Duration(milliseconds: 3000),
              maxAnimationDuration: Duration(milliseconds: 10000),
              maxScale: 8,
              child: Image.network(
                "https://live.staticflickr.com/8381/28816409494_89aae208c3_b.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: DimenConstants.marginPaddingMedium),
            height: 300,
            child: KenBurns.multiple(
              childLoop: 3,
              children: [
                Image.network(
                  "https://live.staticflickr.com/8381/28816409494_89aae208c3_b.jpg",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://live.staticflickr.com/8249/29360388401_7de0f59287_b.jpg",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://live.staticflickr.com/8176/28818557293_0ee9546312_b.jpg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
