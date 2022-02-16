import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import '1/expansion_1_creen.dart';
import '2/expansion_panel_2.dart';

class MenuExpansionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuExpansionScreen",
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
              "Expansion1Screen",
              () {
                Get.to(Expansion1Screen());
              },
            ),
            UIUtils.getButton(
              "ExpansionPanelScreen2",
              () {
                Get.to(ExpansionPanelScreen2());
              },
            ),
          ],
        ),
      ),
    );
  }
}
