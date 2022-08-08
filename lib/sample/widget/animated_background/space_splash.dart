import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class SpaceSplash extends StatefulWidget {
  @override
  _SpaceSplashState createState() => _SpaceSplashState();
}

class _SpaceSplashState extends State<SpaceSplash>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      behaviour: ChildFlySpaceBehaviour(),
      vsync: this,
      child: Container(
        child: Image.asset(
          "assets/images/icy_logo.png",
          height: 100.0,
        ),
      ),
    );
  }
}
