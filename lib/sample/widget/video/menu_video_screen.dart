import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chewie/chewie_screen.dart';
import 'video_player/video_player_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuVideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Video",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        thumbVisibility: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "chewie",
              () {
                Get.to(() => ChewieScreen());
              },
              description:
                  "A video player for Flutter with Cupertino and Material play controls",
            ),
            UIUtils.getButton(
              "video_player",
              () {
                Get.to(() => VideoPlayerScreen());
              },
              description:
                  "Flutter plugin for displaying inline video with other Flutter widgets on Android, iOS, and web.",
            ),
          ],
        ),
      ),
    );
  }
}
