import 'package:flutter/material.dart';
import 'package:com.roy93group.flutter_tutorial/lib/animation/route_transition/size_route.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';

import '../route_transition_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class SizeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: UIUtils.getButton("SizeTransition", () {
          Navigator.push(context, SizeRoute(page: Screen2()));
        }),
      ),
    );
  }
}
