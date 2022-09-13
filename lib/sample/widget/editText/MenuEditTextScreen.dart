import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/editText/pinCodeFields/PinCodeFieldsScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/editText/searchDelegate/SearchDelegateScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/editText/textField/TextFieldScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'EditTextScreen.dart';
import 'FormFieldScreen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuEditTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuEditTextScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils.getButton(
              "PinCodeFieldsScreen",
              () {
                Get.to(PinCodeFieldsScreen());
              },
            ),
            UIUtils.getButton(
              "EditTextScreen",
              () {
                Get.to(EditTextScreen());
              },
            ),
            UIUtils.getButton(
              "FormFieldScreen",
              () {
                Get.to(FormFieldScreen());
              },
            ),
            UIUtils.getButton(
              "SearchDelegateScreen",
              () {
                Get.to(SearchDelegateScreen());
              },
            ),
            UIUtils.getButton(
              "TextFieldScreen",
              () {
                Get.to(TextFieldScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
