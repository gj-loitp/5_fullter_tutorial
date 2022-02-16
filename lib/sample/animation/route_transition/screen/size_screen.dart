import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/route_transition/size_route.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import '../route_transition_screen.dart';

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
