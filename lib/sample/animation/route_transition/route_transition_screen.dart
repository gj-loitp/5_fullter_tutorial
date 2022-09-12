import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/fade_screen.dart';
import 'screen/random_screen.dart';
import 'screen/rotation_screen.dart';
import 'screen/scale_screen.dart';
import 'screen/size_screen.dart';
import 'screen/slide_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
//https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823
class RouteTransitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "RouteTransitionScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: Screen1(),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  final Map<String, Widget> screens = {
    'FadeTransition': FadeScreen(),
    'Random': RandomScreen(),
    'RotationTransition': RotationScreen(),
    'ScaleTransition': ScaleScreen(),
    'SizeTransition': SizeScreen(),
    'SlideTransition': SlideScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buttons(context),
          ),
        ),
      ),
    );
  }

  List<Widget> buttons(context) {
    List<Widget> buttons = [];
    screens.forEach(
      (k, v) => buttons.add(UIUtils.getButton(k, () {
        Navigator.push(context, CupertinoPageRoute(builder: (context) => v));
      })),
    );
    return buttons;
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: UIUtils.getButton("Go Back!", () {
        Get.back();
      })),
    );
  }
}
