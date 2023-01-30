import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'showcase.dart';
import 'workspace.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterSpinkitScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterSpinkitScreenState();
  }
}

class _FlutterSpinkitScreenState
    extends BaseStatefulState<FlutterSpinkitScreen> {
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
        "flutter_spinkit",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_spinkit");
        },
      ),
      body: App(),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          child: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.play_circle_filled),
              iconSize: 50.0,
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                      builder: (_) => const ShowCase(),
                      fullscreenDialog: true)),
            ),
          ),
          alignment: Alignment.bottomCenter,
        ),
        const Positioned.fill(child: Center(child: WorkSpace())),
      ],
    );
  }
}
