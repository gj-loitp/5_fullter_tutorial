import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:fk_toggle/fk_toggle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FkToggleScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FkToggleScreenState();
  }
}

class _FkToggleScreenState extends BaseStatefulState<FkToggleScreen> {
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
        "fk_toggle",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/fk_toggle");
        },
      ),
      body: FkToggleSample(),
    );
  }
}

class FkToggleSample extends StatelessWidget {
  const FkToggleSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OnSelected selected = ((index, instance) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Select $index, toggle ${instance.labels[index]}')));
    });

    final toggles = [
      FkToggle(
          width: 50,
          height: 30,
          labels: const ['1', '2'],
          onSelected: selected),
      FkToggle(
          width: 100,
          height: 50,
          labels: const ['one', 'two'],
          fontSize: 24,
          cornerRadius: 4,
          onSelected: selected),
      FkToggle(
          width: 50,
          height: 30,
          labels: const ['1', '2', '3', '4', '5'],
          onSelected: selected),
      FkToggle(
          width: 60,
          height: 50,
          labels: const ['ON', 'OFF'],
          cornerRadius: 30,
          onSelected: selected),
      FkToggle(
          width: 60,
          height: 40,
          icons: const [
            Icon(Icons.add_reaction),
            Icon(Icons.add_reaction_outlined)
          ],
          labels: const ['', ''],
          onSelected: selected),
      FkToggle(
          width: 120,
          height: 50,
          labels: const ['Orange', 'White'],
          selectedColor: Colors.orange,
          backgroundColor: Colors.white,
          onSelected: selected),
      FkToggle(
          width: 100,
          height: 50,
          icons: const [
            Icon(Icons.add_reaction),
          ],
          labels: const ['', 'smile'],
          onSelected: selected),
      FkToggle(
          width: 120,
          height: 50,
          selectedColor: Colors.red,
          backgroundColor: Colors.white,
          enabledElementColor: Colors.yellow,
          disabledElementColor: Colors.grey,
          icons: const [
            Icon(Icons.sentiment_satisfied_alt),
            Icon(Icons.emoji_emotions),
          ],
          labels: const ['Smile', 'Good'],
          onSelected: selected),
    ];

    return Scaffold(
      // appBar: AppBar(title: const Text('Sample Toggle Switches')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: toggles
              .map((e) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
