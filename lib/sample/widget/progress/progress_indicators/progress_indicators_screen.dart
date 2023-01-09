import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progress_indicators/progress_indicators.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ProgressIndicatorsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProgressIndicatorsScreenState();
  }
}

class _ProgressIndicatorsScreenState
    extends BaseStatefulState<ProgressIndicatorsScreen> {
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
        "progress_indicators",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/progress_indicators");
        },
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print(Offset(0.0, -1.0).distanceSquared - Offset(0.0, 0.0).distanceSquared);
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Jumping dots'),
            JumpingDotsProgressIndicator(
              fontSize: 20.0,
            ),
            SizedBox(height: 60.0),
            new Text('Heartbeat'),
            SizedBox(height: 16.0),
            HeartbeatProgressIndicator(
              child: Icon(Icons.home),
            ),
            SizedBox(height: 60.0),
            new Text('Glowing'),
            GlowingProgressIndicator(
              child: Icon(Icons.home),
            ),
            SizedBox(height: 32.0),
            FadingText('Loading...'),
            SizedBox(height: 32.0),
            JumpingText('Loading...'),
            SizedBox(height: 32.0),
            ScalingText('Loading...'),
            SizedBox(height: 32.0),
            CollectionSlideTransition(
              children: <Widget>[
                Icon(Icons.android),
                Icon(Icons.apps),
                Icon(Icons.announcement),
              ],
            ),
            SizedBox(height: 32.0),
            CollectionScaleTransition(
              children: <Widget>[
                Icon(Icons.android),
                Icon(Icons.apps),
                Icon(Icons.announcement),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
