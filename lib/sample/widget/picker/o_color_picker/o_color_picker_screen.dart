import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:o_color_picker/o_color_picker.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class OColorPickerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OColorPickerScreenState();
  }
}

class _OColorPickerScreenState extends BaseStatefulState<OColorPickerScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "o_color_picker",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/o_color_picker");
        },
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? selectedColor = Colors.lightGreen[300];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (var states) => selectedColor!,
              )),
              child: Text(
                'Change the color of the button',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () => showDialog<void>(
                context: context,
                builder: (_) => Material(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      OColorPicker(
                        selectedColor: selectedColor,
                        colors: primaryColorsPalette,
                        onColorChange: (color) {
                          setState(() {
                            selectedColor = color;
                          });
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
