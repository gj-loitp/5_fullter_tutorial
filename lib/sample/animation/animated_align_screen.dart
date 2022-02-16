import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AnimatedAlignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedAlignScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: Center(
        child: AnimatedAlignWidget(),
      ),
    );
  }
}

class AnimatedAlignWidget extends StatefulWidget {
  @override
  _AnimatedAlignWidgetState createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  var _alignment = Alignment.topLeft;

  void _changeAlignment() {
    setState(() => _alignment = _alignment == Alignment.topLeft
        ? Alignment.bottomRight
        : Alignment.topLeft);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 300,
          width: 300,
          color: Colors.grey.shade200,
          child: AnimatedAlign(
            alignment: _alignment,
            curve: Curves.ease,
            duration: Duration(seconds: 3),
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),
        UIUtils.getButton("Change Align", () {
          _changeAlignment();
        }),
      ],
    );
  }
}
