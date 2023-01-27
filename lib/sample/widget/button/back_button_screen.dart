import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class BackButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "BackButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: DimenConstants.marginPaddingMedium),
            BackButton(color: Colors.red),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            CloseButton(),
          ],
        ),
      ),
    );
  }
}
