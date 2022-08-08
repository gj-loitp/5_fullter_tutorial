import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RawMaterialButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "RawMaterialButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: RawMaterialButton(
          padding: EdgeInsets.fromLTRB(
            DimenConstants.marginPaddingMedium,
            0,
            DimenConstants.marginPaddingMedium,
            0,
          ),
          onPressed: () {},
          child: UIUtils.getText("RawMaterialButton"),
        ),
      ),
    );
  }
}
