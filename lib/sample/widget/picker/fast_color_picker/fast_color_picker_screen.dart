import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:fast_color_picker/fast_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FastColorPickerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FastColorPickerScreenState();
  }
}

class _FastColorPickerScreenState
    extends BaseStatefulState<FastColorPickerScreen> {
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
        "fast_color_picker",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/fast_color_picker");
        },
      ),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FastColorPicker(
        selectedColor: _color,
        onColorSelected: (color) {
          setState(() {
            _color = color;
          });
        },
      ),
    );
  }
}
