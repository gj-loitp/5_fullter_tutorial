import 'package:another_flushbar/flushbar.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class AnotherFlushbarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnotherFlushbarScreenState();
  }
}

class _AnotherFlushbarScreenState
    extends BaseStatefulState<AnotherFlushbarScreen> {
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
        "another_flushbar",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/another_flushbar");
        },
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello flushbar:',
            ),
            FloatingActionButton(
              onPressed: () async {
                await Flushbar(
                  title: "Hey Ninja",
                  titleColor: Colors.white,
                  message:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                  flushbarPosition: FlushbarPosition.TOP,
                  flushbarStyle: FlushbarStyle.GROUNDED,
                  reverseAnimationCurve: Curves.decelerate,
                  forwardAnimationCurve: Curves.elasticOut,
                  backgroundColor: Colors.red,
                  boxShadows: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.8),
                        offset: Offset(0.0, 2.0),
                        blurRadius: 3.0)
                  ],
                  backgroundGradient:
                      LinearGradient(colors: [Colors.blueGrey, Colors.black]),
                  isDismissible: false,
                  duration: Duration(seconds: 4),
                  icon: Icon(
                    Icons.check,
                    color: Colors.greenAccent,
                  ),
                  mainButton: TextButton(
                    onPressed: () {},
                    child: Text(
                      "CLAP",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.blueGrey,
                  titleText: Text(
                    "Hello Hero",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.yellow[600],
                        fontFamily: "ShadowsIntoLightTwo"),
                  ),
                  messageText: Text(
                    "You killed that giant monster in the city. Congratulations!",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.green,
                        fontFamily: "ShadowsIntoLightTwo"),
                  ),
                ).show(context);
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Flushbar(
            title: 'Hey Ninja',
            message:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            duration: Duration(seconds: 3),
          ).show(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
