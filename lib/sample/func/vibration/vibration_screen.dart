import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibration/vibration.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class VibrationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VibrationScreenState();
  }
}

class _VibrationScreenState extends BaseStatefulState<VibrationScreen> {
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
        "vibration",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/vibration");
        },
      ),
      body: VibratingApp(),
    );
  }
}

class VibratingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              ElevatedButton(
                child: Text('Vibrate for default 500ms'),
                onPressed: () {
                  Vibration.vibrate();
                },
              ),
              ElevatedButton(
                child: Text('Vibrate for 1000ms'),
                onPressed: () {
                  Vibration.vibrate(duration: 1000);
                },
              ),
              ElevatedButton(
                child: Text('Vibrate with pattern'),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text(
                      'Pattern: wait 0.5s, vibrate 1s, wait 0.5s, vibrate 2s, wait 0.5s, vibrate 3s, wait 0.5s, vibrate 0.5s',
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Vibration.vibrate(
                    pattern: [500, 1000, 500, 2000, 500, 3000, 500, 500],
                  );
                },
              ),
              ElevatedButton(
                child: Text('Vibrate with pattern and amplitude'),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text(
                      'Pattern: wait 0.5s, vibrate 1s, wait 0.5s, vibrate 2s, wait 0.5s, vibrate 3s, wait 0.5s, vibrate 0.5s',
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Vibration.vibrate(
                    pattern: [500, 1000, 500, 2000, 500, 3000, 500, 500],
                    intensities: [0, 128, 0, 255, 0, 64, 0, 255],
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}
