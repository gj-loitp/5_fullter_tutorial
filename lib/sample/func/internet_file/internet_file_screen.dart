import 'dart:typed_data';

import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_file/internet_file.dart';
import 'package:internet_file/storage_io.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class InternetFileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InternetFileScreenState();
  }
}

class _InternetFileScreenState extends BaseStatefulState<InternetFileScreen> {
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
        "internet_file",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/internet_file");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton("Simple usage anywhere", () {
            _down();
          }),
          UIUtils.getButton(
              "For local store files you can usage InternetFileStorageIO (not works on web)",
              () {
            _down2();
          }),
        ],
      ),
    );
  }

  _down() async {
    final Uint8List bytes = await InternetFile.get(
      'https://github.com/rbcprolabs/icon_font_generator/raw/master/example/lib/icon_font/ui_icons.ttf',
      progress: (receivedLength, contentLength) {
        final percentage = receivedLength / contentLength * 100;
        print(
            'download progress: $receivedLength of $contentLength ($percentage%)');
      },
    );
    showSnackBarFull("Done",
        "url https://github.com/rbcprolabs/icon_font_generator/raw/master/example/lib/icon_font/ui_icons.ttf");
  }

  _down2() async {
    final storageIO = InternetFileStorageIO();

    await InternetFile.get(
      'https://github.com/rbcprolabs/icon_font_generator/raw/master/example/lib/icon_font/ui_icons.ttf',
      storage: storageIO,
      storageAdditional: storageIO.additional(
        filename: 'ui_icons.ttf',
        location: '',
      ),
    );
    showSnackBarFull("Done", "filename ui_icons.ttf");
  }
}
