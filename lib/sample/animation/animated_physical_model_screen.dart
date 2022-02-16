import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AnimatedPhysicalModelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedPhysicalModelScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: AnimatedPhysicalModelWidget(),
      ),
    );
  }
}

class AnimatedPhysicalModelWidget extends StatefulWidget {
  @override
  _AnimatedPhysicalModelWidgetState createState() =>
      _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState
    extends State<AnimatedPhysicalModelWidget> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedPhysicalModel(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          elevation: status ? 0 : 10,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.cyan,
          borderRadius:
              status ? BorderRadius.circular(20) : BorderRadius.circular(0),
          child: Container(
            margin: EdgeInsets.all(20),
            height: 200,
            width: 200,
            color: Colors.teal[200],
            child: FlutterLogo(),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: UIUtils.getButton("Change elevation and borderRadius", () {
            setState(() => status = !status);
          }),
        ),
      ],
    );
  }
}
