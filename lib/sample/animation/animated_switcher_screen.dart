import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AnimatedSwitcherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedSwitcherScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: AnimatedSwitcherWidget(),
      ),
    );
  }
}

class AnimatedSwitcherWidget extends StatefulWidget {
  @override
  _AnimatedSwitcherWidgetState createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  bool switched = false;

  Widget _myAnimatedWidget = Container(
    /// Add unique key to the widgets if they are same
    /// In this case all 3 are Container Widgets
    key: ValueKey(1),
    width: 250.0,
    height: 250.0,
    color: Color(0xfff18FFFF),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: AnimatedSwitcher(
              duration: Duration(seconds: 1),

              /// Various other animations available
              /// Here we have used the Scale animation
              /// By default, a FadeTransiton will appear between two widgets
              transitionBuilder: (Widget child, Animation<double> animation) =>
                  ScaleTransition(
                    child: child,
                    scale: animation,
                  ),
              child: _myAnimatedWidget),
        ),
        SizedBox(
          height: 80,
        ),
        FloatingActionButton.extended(
          backgroundColor: Colors.green,
          onPressed: () => setState(() {
            _myAnimatedWidget = switched
                ? Container(
                    /// Add unique key to the widgets if they are same
                    key: ValueKey(2),
                    width: 250.0,
                    height: 250.0,
                    color: Color(0xfff18FFFF),
                  )
                : Container(
                    /// Add unique key to the widgets if they are same
                    key: ValueKey(3),
                    width: 250.0,
                    height: 250.0,
                    color: Color(0xfffFF5252),
                  );
            switched ? switched = false : switched = true;
          }),
          icon: Icon(
            Icons.swap_horiz,
            color: Colors.white,
          ),
          label: Text(
            "Switch Widgets",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
