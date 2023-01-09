import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'avatar_glow/avatar_glow_screen.dart';
import 'cache_network_image/cache_network_image_screen.dart';
import 'gradient/gradient_screen.dart';
import 'image_screen.dart';
import 'image_view_360/image_view_360_screen.dart';
import 'kenburn/kenburns_nullsafety_screen.dart';
import 'photo_view/photo_view_screen.dart';

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
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: <Widget>[
          UIUtils.getButton(
            "avatar_glow",
            () {
              Get.to(AvatarGlowScreen());
            },
            description:
                "A Flutter package providing a Avatar Glow Widget with cool background glowing animation.",
          ),
          UIUtils.getButton(
            "cached_network_image +++",
            () {
              Get.to(CacheNetworkImageScreen());
            },
            description:
                "Flutter library to load and cache network images. Can also be used with placeholder and error widgets.",
          ),
          UIUtils.getButton(
            "GradientScreen",
            () {
              Get.to(GradientScreen());
            },
          ),
          UIUtils.getButton(
            "ImageView360Screen",
            () {
              Get.to(ImageView360Screen());
            },
          ),
          UIUtils.getButton(
            "kenburns_nullsafety",
            () {
              Get.to(KenburnsNullSafetyScreen());
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
    );
  }
}
