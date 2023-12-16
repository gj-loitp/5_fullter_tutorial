import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/image_to_text_flutter/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageToTextFlutterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageToTextFlutterScreenState();
  }
}

class _ImageToTextFlutterScreenState extends BaseStatefulState<ImageToTextFlutterScreen> {
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
        "ImageToTextFlutterScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser("https://github.com/Mrhammaddev/Image_to_Text_Flutter");
        },
      ),
      body: HomeScreenImageToText(),
    );
  }
}
