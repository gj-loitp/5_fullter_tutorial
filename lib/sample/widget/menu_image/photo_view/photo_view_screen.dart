import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/examples/common_use_cases_examples.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/examples/controller_example.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/examples/custom_child_examples.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/examples/dialog_example.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/examples/gallery/gallery_example.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/examples/hero_example.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/examples/inline_examples.dart';
import 'package:hello_word/sample/widget/menu_image/photo_view/examples/rotation_examples.dart';

import 'examples/network_images.dart';

class PhotoViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar("PhotoViewScreen", () {
        Get.back();
      }, () {
        UrlLauncherUtils.launchInWebViewWithJavaScript(
            "https://pub.dev/packages/photo_view");
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
