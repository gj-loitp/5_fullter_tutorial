import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translator/translator.dart';

class TranslatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TranslatorScreenState();
  }
}

class _TranslatorScreenState extends BaseStatefulState<TranslatorScreen> {
  TextEditingController _controller = TextEditingController();

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
        "TranslatorScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript("https://pub.dev/packages/translator");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getText("Demo translate from ENGLISH to VIETNAMESE"),
          TextFormField(
            maxLength: 100,
            autovalidateMode: AutovalidateMode.always,
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Input something in English',
            ),
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.none,
          ),
          UIUtils.getButton("Translate", () async {
            final translator = GoogleTranslator();
            var translation = await translator.translate(_controller.text, from: 'en', to: 'vi');
            showSnackBarFull("Result", translation.text);
          }),
        ],
      ),
    );
  }
}
