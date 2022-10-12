import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FadeInImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "FadeInImageScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: FadeInImageWidget(),
      ),
    );
  }
}

class FadeInImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: 'https://picsum.photos/250?image=9',
          ),
        ),
      ],
    );
  }
}
