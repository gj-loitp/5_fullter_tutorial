import 'package:com.roy93group.flutter_tutorial/lib/common/const/constants.dart';
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
class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ImageScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: DimenConstants.marginPaddingMedium),
              _getImageAssetWidget(),
              SizedBox(height: DimenConstants.marginPaddingMedium),
              _getImageNetworkWidget(),
              SizedBox(height: DimenConstants.marginPaddingMedium),
              _getIconWidget(),
              SizedBox(height: DimenConstants.marginPaddingMedium),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(Constants.dummyImageLink),
              ),
              SizedBox(height: DimenConstants.marginPaddingMedium),
              ClipOval(
                child: Image.network(
                  Constants.dummyImageLink,
                  height: 300,
                  width: 500,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: DimenConstants.marginPaddingMedium),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Image.network(
                  Constants.dummyImageLink,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _getImageAssetWidget() {
    return Image.asset(
      "assets/images/gallery1.jpg",
      width: 300,
      height: 200,
    );
  }

  Widget _getImageNetworkWidget() {
    // return Image.network('https://picsum.photos/250?image=9');
    return Image.network(
        'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true');
  }

  Widget _getIconWidget() {
    return Icon(Icons.email);
  }
}
