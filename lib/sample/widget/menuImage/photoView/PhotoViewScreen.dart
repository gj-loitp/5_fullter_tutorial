import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'examples/CommonUseCasesExamples.dart';
import 'examples/ControllerExample.dart';
import 'examples/CustomChildExamples.dart';
import 'examples/DialogExample.dart';
import 'examples/HeroExample.dart';
import 'examples/InlineExamples.dart';
import 'examples/NetworkImages.dart';
import 'examples/RotationExamples.dart';
import 'examples/gallery/GalleryExample.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PhotoViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar("PhotoViewScreen", () {
        Get.back();
      }, () {
        UrlLauncherUtils.launchInWebViewWithJavaScript(
            "https://pub.dev/packages/photoView");
      }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // const ExampleAppBar(title: "PhotoViewScreen"),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "See bellow examples of some of the most common photo view usage cases",
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(CommonUseCasesExamples());
                  },
                  text: "Common use cases",
                ),
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(GalleryExample());
                  },
                  text: "Gallery",
                ),
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(HeroExample());
                  },
                  text: "Hero animation",
                ),
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(NetworkExamples());
                  },
                  text: "Network images",
                ),
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(ControllerExample());
                  },
                  text: "Controller",
                ),
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(InlineExample());
                  },
                  text: "Part of the screen",
                ),
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(CustomChildExample());
                  },
                  text: "Custom child",
                ),
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(DialogExample());
                  },
                  text: "Integrated to dialogs",
                ),
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(GestureRotationExample());
                  },
                  text: "Rotation Gesture",
                ),
                _buildItem(
                  context,
                  onPressed: () {
                    Get.to(ProgrammaticRotationExample());
                  },
                  text: "Rotation Programmatic",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
    context, {
    required String text,
    required VoidCallback onPressed,
  }) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
      ),
      onPressed: onPressed,
    );
  }
}