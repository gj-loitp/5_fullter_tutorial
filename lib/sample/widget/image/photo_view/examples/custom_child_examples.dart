import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class CustomChildExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "CustomChildExample",
        () {
          Get.back();
        },
        null,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Example of usage with something different than a image",
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: ClipRect(
                child: PhotoView.customChild(
                  child: Container(
                    decoration:
                        const BoxDecoration(color: Colors.lightGreenAccent),
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Hello there, this is a text, that is a svg:",
                          style: const TextStyle(fontSize: 12.0),
                          textAlign: TextAlign.center,
                        ),
                        SvgPicture.asset(
                          "assets/images/firefox.svg",
                          height: 250.0,
                        )
                      ],
                    ),
                  ),
                  initialScale: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
