import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hsv_color_pickers/hsv_color_pickers.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class HsvColorPickersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HsvColorPickersScreenState();
  }
}

class _HsvColorPickersScreenState
    extends BaseStatefulState<HsvColorPickersScreen> {
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
        "hsv_color_pickers",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/hsv_color_pickers");
        },
      ),
      body: ExampleApp(),
    );
  }
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: const [
            Expanded(
              child: InitialColorExample(),
            ),
            Divider(thickness: 2),
            Expanded(
              child: ControllerExample(),
            ),
          ],
        ));
  }
}

class InitialColorExample extends StatefulWidget {
  const InitialColorExample({Key? key}) : super(key: key);

  @override
  State<InitialColorExample> createState() => _InitialColorExampleState();
}

class _InitialColorExampleState extends State<InitialColorExample> {
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Example using initialColor",
          style: Theme.of(context).textTheme.headline6,
        ),
        CircleAvatar(
          radius: 32,
          backgroundColor: _color,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HuePicker(
            initialColor: HSVColor.fromColor(_color),
            onChanged: (color) {
              setState(() {
                _color = color.toColor();
              });
            },
            thumbShape: const HueSliderThumbShape(
              color: Colors.white,
              borderColor: Colors.black,
              filled: false,
              showBorder: true,
            ),
          ),
        ),
      ],
    );
  }
}

class ControllerExample extends StatefulWidget {
  const ControllerExample({Key? key}) : super(key: key);

  @override
  State<ControllerExample> createState() => _ControllerExampleState();
}

class _ControllerExampleState extends State<ControllerExample> {
  late HueController _controller;

  @override
  void initState() {
    super.initState();
    _controller = HueController(HSVColor.fromColor(Colors.green));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Example using controller",
          style: Theme.of(context).textTheme.headline6,
        ),
        CircleAvatar(
          radius: 32,
          backgroundColor: _controller.value.toColor(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HuePicker(
            controller: _controller,
            onChanged: (color) {
              setState(() {
                // Intentionally left empty, to trigger re-build of Widget
              });
            },
            thumbShape: const HueSliderThumbShape(
              color: Colors.white,
              borderColor: Colors.black,
              filled: false,
              showBorder: true,
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              _controller.value = HSVColor.fromColor(Colors.blue);
            },
            child: const Text("Reset to blue form outside"))
      ],
    );
  }
}
