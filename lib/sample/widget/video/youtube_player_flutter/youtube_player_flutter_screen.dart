import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class YoutubePlayerFlutterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _YoutubePlayerFlutterScreenState();
  }
}

class _YoutubePlayerFlutterScreenState
    extends BaseStatefulState<YoutubePlayerFlutterScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "youtube_player_flutter",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/youtube_player_flutter");
        },
      ),
      body: YoutubePlayerDemoApp(),
    );
  }
}
