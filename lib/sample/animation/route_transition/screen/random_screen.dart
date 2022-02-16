import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/route_transition/enter_exit_route.dart';
import 'package:hello_word/lib/animation/route_transition/scale_route.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import '../route_transition_screen.dart';

class RandomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            UIUtils.getButton("EnterExitSlideTransition", () {
              Navigator.push(context,
                  EnterExitRoute(exitPage: this, enterPage: Screen2()));
            }),
            UIUtils.getButton("ScaleRotateTransition", () {
              Navigator.push(context, ScaleRoute(page: Screen2()));
            }),
          ],
        ),
      ),
    );
  }
}
