import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';

import 'pickers/block_picker.dart';
import 'pickers/hsv_picker.dart';
import 'pickers/material_picker.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterColorPickerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterColorPickerScreenState();
  }
}

class _FlutterColorPickerScreenState
    extends BaseStatefulState<FlutterColorPickerScreen> {
  bool lightTheme = true;
  Color currentColor = Colors.amber;
  List<Color> currentColors = [Colors.yellow, Colors.green];
  List<Color> colorHistory = [];

  void changeColor(Color color) => setState(() => currentColor = color);

  void changeColors(List<Color> colors) =>
      setState(() => currentColors = colors);

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
    final foregroundColor =
        useWhiteForeground(currentColor) ? Colors.white : Colors.black;
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "flutter_colorpicker",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_colorpicker");
        },
      ),
      body: AnimatedTheme(
        data: lightTheme ? ThemeData.light() : ThemeData.dark(),
        child: Builder(builder: (context) {
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () => setState(() => lightTheme = !lightTheme),
                icon: Icon(lightTheme
                    ? Icons.dark_mode_rounded
                    : Icons.light_mode_rounded),
                label: Text(lightTheme ? 'Night' : '  Day '),
                backgroundColor: currentColor,
                foregroundColor: foregroundColor,
                elevation: 15,
              ),
              appBar: AppBar(
                title: const Text('Flutter Color Picker Example'),
                backgroundColor: currentColor,
                foregroundColor: foregroundColor,
                bottom: TabBar(
                  labelColor: foregroundColor,
                  tabs: const <Widget>[
                    Tab(text: 'HSV/HSL/RGB'),
                    Tab(text: 'Material'),
                    Tab(text: 'Blocky'),
                  ],
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  HSVColorPickerExample(
                    pickerColor: currentColor,
                    onColorChanged: changeColor,
                    colorHistory: colorHistory,
                    onHistoryChanged: (List<Color> colors) =>
                        colorHistory = colors,
                  ),
                  MaterialColorPickerExample(
                      pickerColor: currentColor, onColorChanged: changeColor),
                  BlockColorPickerExample(
                    pickerColor: currentColor,
                    onColorChanged: changeColor,
                    pickerColors: currentColors,
                    onColorsChanged: changeColors,
                    colorHistory: colorHistory,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
