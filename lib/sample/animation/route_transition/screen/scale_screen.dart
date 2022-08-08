import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/route_transition/scale_route.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import '../route_transition_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ScaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: UIUtils.getButton("ScaleTransition", () {
          Navigator.push(
            context,
            ScaleRoute(page: Screen2()),
          );
        }),
      ),
    );
  }
}
