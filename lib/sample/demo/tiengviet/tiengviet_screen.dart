import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiengviet/tiengviet.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class TiengVietScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TiengVietScreenState();
  }
}

class _TiengVietScreenState extends BaseStatefulState<TiengVietScreen> {
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
        "tiengviet",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/tiengviet");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getText(
              "Convert vietnamese sign to unsign easily like eat 🥞🥞🥞."),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          UIUtils.getText(
              "Mặc dù TP.HCM đã cấm tập trung quá 3 người ở nơi công cộng nhưng theo ghi nhận của chúng tôi, không ít người dân vẫn vô tư tập trung ăn uống, thả diều, thậm chí bỏ luôn cả khẩu trang để chụp ảnh, quên mất việc phòng dịch Covid-19."),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          UIUtils.getText(
              "=>"),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          UIUtils.getText(TiengViet.parse(
              "Mặc dù TP.HCM đã cấm tập trung quá 3 người ở nơi công cộng nhưng theo ghi nhận của chúng tôi, không ít người dân vẫn vô tư tập trung ăn uống, thả diều, thậm chí bỏ luôn cả khẩu trang để chụp ảnh, quên mất việc phòng dịch Covid-19.")),
        ],
      ),
    );
  }
}
