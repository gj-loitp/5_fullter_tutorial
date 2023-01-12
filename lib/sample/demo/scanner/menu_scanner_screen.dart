import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../qr_code_scanner/qr_code_scanner_screen.dart';
import '../qr_flutter/qr_flutter_screen.dart';
import 'mobile_scanner/mobile_scanner_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuScannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Scanner",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "mobile_scanner",
            () {
              Get.to(MobileScannerScreen());
            },
            description:
                "A universal barcode and QR code scanner for Flutter based on MLKit. Uses CameraX on Android, AVFoundation on iOS and Apple Vision & AVFoundation on macOS.",
          ),
          UIUtils.getButton(
            "qr_code_scanner",
            () {
              Get.to(() => QrCodeScannerScreen());
            },
            description:
                "QR code scanner that can be embedded inside flutter. It uses zxing in Android and MTBBarcode scanner in iOS.",
          ),
          UIUtils.getButton(
            "qr_flutter",
            () {
              Get.to(() => QrFlutterScreen());
            },
            description:
                "QR.Flutter is a Flutter library for simple and fast QR code rendering via a Widget or custom painter.",
          ),
        ],
      ),
    );
  }
}
