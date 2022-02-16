import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/edit_text/pin_code_fields/pin_code_fields_screen.dart';
import 'package:hello_word/sample/widget/edit_text/search_delegate/search_delegate_screen.dart';
import 'package:hello_word/sample/widget/edit_text/text_field/text_field_screen.dart';

import 'edit_text_screen.dart';
import 'form_field_screen.dart';

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
