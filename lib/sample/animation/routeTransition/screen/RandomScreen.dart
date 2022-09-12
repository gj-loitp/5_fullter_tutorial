import 'package:com.roy93group.flutter_tutorial/lib/animation/routeTransition/EnterExitRoute.dart';
import 'package:com.roy93group.flutter_tutorial/lib/animation/routeTransition/ScaleRoute.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';

import '../RouteTransitionScreen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RandomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
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
