import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AnimatedOpacityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedOpacityScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
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
