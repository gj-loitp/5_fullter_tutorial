import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/menu_image/imageview360/imageview360_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/menu_image/photo_view/photo_view_screen.dart';

import 'avatar_glow_screen.dart';
import 'cache_network_image_screen.dart';
import 'gradient_screen.dart';
import 'image_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuImageScreen",
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
              "ImageView360Screen",
              () {
                Get.to(ImageView360Screen());
              },
            ),
            UIUtils.getButton(
              "AvatarGlowScreen",
              () {
                Get.to(AvatarGlowScreen());
              },
            ),
            UIUtils.getButton(
              "CacheNetworkImageScreen +++",
              () {
                Get.to(CacheNetworkImageScreen());
              },
            ),
            UIUtils.getButton(
              "GradientScreen",
              () {
                Get.to(GradientScreen());
              },
            ),
            UIUtils.getButton(
              "ImageScreen",
              () {
                Get.to(ImageScreen());
              },
            ),
            UIUtils.getButton(
              "PhotoViewScreen",
              () {
                Get.to(PhotoViewScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
