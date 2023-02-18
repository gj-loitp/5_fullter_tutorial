import 'package:colorful_background/colorful_background.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ColorfulBackgroundScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColorfulBackgroundScreenState();
  }
}

class _ColorfulBackgroundScreenState
    extends BaseStatefulState<ColorfulBackgroundScreen> {
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
        "colorful_background",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/colorful_background");
        },
      ),
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Added our widget: ColorfulBackground()
      body: ColorfulBackground(
        duration: const Duration(milliseconds: 300),
        backgroundColors: const [
          Color(0xFFFF5ACD),
          Color(0xFFFBDA61),
          Color(0xFFFBAB7E),
          Color(0xFFF7CE68),
          Color(0xFFFFFB7D),
        ],
        // decoratorList is an optional attribute
        decoratorsList: [
          Positioned(
            top: MediaQuery.of(context).size.height / 2.5,
            left: MediaQuery.of(context).size.width / 2.5,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 90,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
        child: const Center(
          child: Text(
            "Check my background!",
            style: TextStyle(color: Colors.black, fontSize: 28),
          ),
        ),
      ),
    );
  }
}
