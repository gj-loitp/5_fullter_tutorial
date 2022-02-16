import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "FadeInImageScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
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
