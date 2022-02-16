import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/route_transition/slide_route.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import '../route_transition_screen.dart';

class SlideScreen extends StatelessWidget {
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
            UIUtils.getButton("SlideRightTransition", () {
              Navigator.push(context, SlideRightRoute(page: Screen2()));
            }),
            UIUtils.getButton("SlideLeftTransition", () {
              Navigator.push(context, SlideLeftRoute(page: Screen2()));
            }),
            UIUtils.getButton("SlideTopTransition", () {
              Navigator.push(context, SlideTopRoute(page: Screen2()));
            }),
            UIUtils.getButton("SlideBottomTransition", () {
              Navigator.push(context, SlideBottomRoute(page: Screen2()));
            }),
          ],
        ),
      ),
    );
  }
}
