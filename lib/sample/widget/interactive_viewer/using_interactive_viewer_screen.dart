import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class UsingInteractiveViewerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "UsingInteractiveViewerScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(300.0),
        minScale: 0.1,
        maxScale: 1.6,
        child: Center(
          child: getImageWidget(),
        ),
      ),
    );
  }

  Widget getImageWidget() {
    return Image.network(Constants.dummyImageLink);
  }
}
