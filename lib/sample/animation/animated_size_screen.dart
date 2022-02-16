import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AnimatedSizeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedSizeScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: AnimatedSizeWidget(),
      ),
    );
  }
}

class AnimatedSizeWidget extends StatefulWidget {
  @override
  _AnimatedSizeWidgetState createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget>
    with SingleTickerProviderStateMixin {
  bool status = true;
  double width = 200;
  double height = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 300,
          height: 300,
          color: Colors.lightGreen[400],
          child: Center(
            child: AnimatedSize(
              duration: Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              child: Container(
                width: width,
                height: height,
                color: Colors.blue,
              ),
              vsync: this,
            ),
          ),
        ),
        UIUtils.getButton("Change Size", () {
          width = status ? 250 : 200;
          height = status ? 150 : 200;
          status = !status;
        }),
      ],
    );
  }
}
