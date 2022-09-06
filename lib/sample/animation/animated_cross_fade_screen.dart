import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AnimatedCrossFadeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedCrossFadeScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: AnimatedCrossFadeWidget(),
      ),
    );
  }
}

class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  _AnimatedCrossFadeWidgetState createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedCrossFade(
          sizeCurve: ElasticOutCurve(),
          firstCurve: Curves.easeIn,
          secondCurve: Curves.easeInOut,
          duration: Duration(seconds: 3),
          firstChild: FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 100,
          ),
          secondChild: FlutterLogo(
            style: FlutterLogoStyle.markOnly,
            size: 100,
          ),
          crossFadeState:
              isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
        UIUtils.getButton("Click Me!", () {
          setState(() => isFirst = !isFirst);
        }),
      ],
    );
  }
}
