import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/edit_text/pin_code_fields/PinCodeFieldsScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/edit_text/search_delegate/SearchDelegateScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/edit_text/text_field/TextFieldScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_text_screen.dart';
import 'form_field_screen.dart';
import 'mask_text_input_formatter/mask_text_input_formatter_screen.dart';
import 'otp_text_field/otp_text_field_screen.dart';

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
              "mask_text_input_formatter",
              () {
                Get.to(() => MaskTextInputFormatterScreen());
              },
              description:
                  "The package provides TextInputFormatter for TextField aeld and TextFormField which format the input by a given mask.",
            ),
            UIUtils.getButton(
              "otp_text_field",
              () {
                Get.to(() => OtpTextFieldScreen());
              },
              description:
                  "A flutter package to create a OTP Text Field widget in your application.",
            ),
            UIUtils.getButton(
              "pin_code_fields",
              () {
                Get.to(() => PinCodeFieldsScreen());
              },
              description:
                  "A flutter package which will help you to generate pin code fields. Can be useful for OTP for example.",
            ),
            UIUtils.getButton(
              "EditTextScreen",
              () {
                Get.to(() => EditTextScreen());
              },
            ),
            UIUtils.getButton(
              "FormFieldScreen",
              () {
                Get.to(() => FormFieldScreen());
              },
            ),
            UIUtils.getButton(
              "SearchDelegateScreen",
              () {
                Get.to(() => SearchDelegateScreen());
              },
            ),
            UIUtils.getButton(
              "TextFieldScreen",
              () {
                Get.to(() => TextFieldScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
