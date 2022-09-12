import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PositionedTransitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "PositionedTransitionScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: PositionedTransitionWidget(),
      ),
    );
  }
}

class PositionedTransitionWidget extends StatefulWidget {
  @override
  _PositionedTransitionWidgetState createState() =>
      _PositionedTransitionWidgetState();
}

class _PositionedTransitionWidgetState extends State<PositionedTransitionWidget>
    with SingleTickerProviderStateMixin {
  final RelativeRectTween relativeRectTween = RelativeRectTween(
    begin: RelativeRect.fromLTRB(100, 100, 0, 0),
    end: RelativeRect.fromLTRB(0, 0, 50, 50),
  );
  late AnimationController controller;
  bool status = true;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.pink,
          width: 300,
          height: 300,
          child: Stack(
            children: <Widget>[
              PositionedTransition(
                rect: relativeRectTween.animate(controller),
                child: Container(
                  color: Colors.orange,
                  width: 200,
                  height: 200,
                  padding: EdgeInsets.all(20),
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
        ),
        UIUtils.getButton("Change Position", () {
          status ? controller.forward() : controller.reverse();
          status = !status;
        }),
      ],
    );
  }
}
