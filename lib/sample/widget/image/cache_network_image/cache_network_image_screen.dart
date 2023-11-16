import 'package:cached_network_image/cached_network_image.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../lib/util/url_launcher_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class CacheNetworkImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "cached_network_image",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/cached_network_image");
        },
      ),
      body: _buildWidget(),
    );
  }

  Widget _buildWidget() {
    return CachedNetworkImage(
      imageUrl: Constants.dummyImageLink,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.none,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.colorBurn)),
        ),
      ),
      placeholder: (context, url) => Center(
        child: CircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) => Center(
        child: Icon(Icons.error),
      ),
    );
  }
}
