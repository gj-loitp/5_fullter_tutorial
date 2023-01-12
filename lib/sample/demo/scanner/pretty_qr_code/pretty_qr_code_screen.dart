import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PrettyQrCodeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrettyQrCodeScreenState();
  }
}

class _PrettyQrCodeScreenState extends BaseStatefulState<PrettyQrCodeScreen> {
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
        "pretty_qr_code",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/pretty_qr_code");
        },
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UIUtils.getText("https://pub.dev/packages/pretty_qr_code"),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            PrettyQr(
              image: AssetImage('assets/images/ic_l.png'),
              size: 250,
              data: 'https://pub.dev/packages/pretty_qr_code',
              errorCorrectLevel: QrErrorCorrectLevel.M,
              typeNumber: null,
              roundEdges: true,
            ),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            PrettyQr(
              size: 150,
              data: 'https://pub.dev/packages/pretty_qr_code',
            ),
          ],
        ),
      ),
    );
  }
}
