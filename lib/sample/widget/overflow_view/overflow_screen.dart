import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:hello_word/sample/widget/overflow_view/avatar.dart';
import 'package:hello_word/sample/widget/overflow_view/avatar_overview.dart';
import 'package:hello_word/sample/widget/overflow_view/avatar_widget.dart';
import 'package:hello_word/sample/widget/overflow_view/command_bar.dart';
import 'package:overflow_view/overflow_view.dart';

class OverflowScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OverflowScreenState();
  }
}

class _OverflowScreenState extends BaseStatefulState<OverflowScreen> {
  int _counter = 1;
  double ratio = 1;

  void _incrementCounter() {
    setState(() {
      _counter = (_counter + 1).clamp(0, avatars.length - 1);
    });
  }

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
        "OverflowScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/overflow_view");
        },
      ),
      body: Column(
        children: [
          Text(
            'People',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          OverflowView.flexible(
            spacing: -40,
            children: <Widget>[
              for (int i = 0; i < _counter; i++)
                AvatarWidget(
                  text: avatars[i].initials,
                  color: avatars[i].color,
                )
            ],
            builder: (context, remaining) {
              return AvatarWidget(
                text: '+$remaining',
                color: Colors.red,
              );
            },
          ),
          SizedBox(height: 20),
          FractionallySizedBox(
            widthFactor: ratio,
            child: CommandBar(),
          ),
          SizedBox(height: 20),
          Expanded(
            child: OverflowView(
              direction: Axis.vertical,
              spacing: 4,
              children: <Widget>[
                for (int i = 0; i < _counter; i++)
                  AvatarWidget(
                    text: avatars[i].initials,
                    color: avatars[i].color,
                  )
              ],
              builder: (context, remaining) {
                return SizedBox(
                  height: 80,
                  width: 80,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      if (remaining > 0)
                        AvatarOverview(
                          position: 0,
                          remaining: remaining,
                          counter: _counter,
                        ),
                      if (remaining > 1)
                        AvatarOverview(
                          position: 1,
                          remaining: remaining,
                          counter: _counter,
                        ),
                      if (remaining > 2)
                        AvatarOverview(
                          position: 2,
                          remaining: remaining,
                          counter: _counter,
                        ),
                      if (remaining > 3)
                        AvatarOverview(
                          position: 3,
                          remaining: remaining,
                          counter: _counter,
                        ),
                      Positioned.fill(
                        child: Center(
                          child: FractionallySizedBox(
                            alignment: Alignment.center,
                            widthFactor: 0.5,
                            heightFactor: 0.5,
                            child: FittedBox(
                              child: AvatarWidget(
                                text: '+$remaining',
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Slider(
          //   value: ratio,
          //   min: 0,
          //   max: 1,
          //   divisions: 100,
          //   onChanged: (value) {
          //     setState(() {
          //       ratio = value;
          //     });
          //   },
          // ),
          SizedBox(height: 40),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
