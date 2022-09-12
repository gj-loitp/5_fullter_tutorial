import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AnimatedOpacityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedOpacityScreen",
        () => Get.back(),
        null,
      ),
      body: Container(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: AnimatedOpacityWidget(),
      ),
    );
  }
}

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  _AnimatedOpacityWidgetState createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opacity = 1.0;

  _changeOpacity() {
    setState(() => opacity = opacity == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.grey.shade200,
          child: AnimatedOpacity(
            opacity: opacity,
            duration: Duration(seconds: 1),
            child: FlutterLogo(),
          ),
        ),
        UIUtils.getButton("Change Opacity", () {
          _changeOpacity();
        }),
      ],
    );
  }
}
