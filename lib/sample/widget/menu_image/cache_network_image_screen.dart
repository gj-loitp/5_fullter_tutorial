import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';

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
        "CacheNetworkImageScreen",
        () {
          Get.back();
        },
        null,
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
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
