import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/route_transition/rotation_route.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import '../route_transition_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RotationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: UIUtils.getButton("RotationTransition", () {
          Navigator.push(context, RotationRoute(page: Screen2()));
        }),
      ),
    );
  }
}
