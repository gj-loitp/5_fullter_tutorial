import 'package:flutter/material.dart';
import 'package:hello_word/lib/animation/route_transition/fade_route.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import '../route_transition_screen.dart';

class FadeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: UIUtils.getButton("FadeTransition", () {
          Navigator.push(context, FadeRoute(page: Screen2()));
        }),
      ),
    );
  }
}
