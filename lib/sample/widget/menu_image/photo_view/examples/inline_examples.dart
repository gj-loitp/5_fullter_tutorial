import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:photo_view/photo_view.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class InlineExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "InlineExample",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Example of usage in a contained context",
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
            height: 200.0,
            child: ClipRect(
              child: PhotoView(
                imageProvider:
                    const AssetImage("assets/images/large-image.jpg"),
                maxScale: PhotoViewComputedScale.covered * 2.0,
                minScale: PhotoViewComputedScale.contained * 0.8,
                initialScale: PhotoViewComputedScale.covered,
              ),
            ),
          )
        ],
      ),
    );
  }
}
