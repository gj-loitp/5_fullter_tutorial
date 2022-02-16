import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class AnimatedThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "AnimatedThemeScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: AnimatedThemeWidget(),
      ),
    );
  }
}

class AnimatedThemeWidget extends StatefulWidget {
  @override
  _AnimatedThemeWidgetState createState() => _AnimatedThemeWidgetState();
}

class _AnimatedThemeWidgetState extends State<AnimatedThemeWidget> {
  var isLight = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedTheme(
          data: isLight ? ThemeData.light() : ThemeData.dark(),
          duration: const Duration(seconds: 1),
          child: Card(
            child: const Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                'Flutter',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        UIUtils.getButton("Change theme", () {
          setState(() => isLight = !isLight);
        }),
      ],
    );
  }
}
