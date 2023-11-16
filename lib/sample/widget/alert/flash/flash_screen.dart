import 'dart:async';

import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'clear_focus.dart';

// void main() => runApp(
//       DevicePreview(
//         enabled: kIsWeb,
//         builder: (context) => App(),
//       ),
//     );

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlashScreenState();
  }
}

class _FlashScreenState extends BaseStatefulState<FlashScreen> {
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
        "flash",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/flash");
        },
      ),
      // body: App(),
      body: HomePage(title: 'Flash Demo Home Page'),
    );
  }
}

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      builder: (context, _) {
        var child = _!;
        child = DevicePreview.appBuilder(context, _);
        // Wrap with toast.
        child = Toast(child: child, navigatorKey: navigatorKey);
        return child;
      },
      locale: DevicePreview.locale(context),
      title: 'Flash Demo',
      theme: ThemeData.light()
          .copyWith(extensions: [FlashToastTheme(), FlashBarTheme()]),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: HomePage(title: 'Flash Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            '⚡️A highly customizable, powerful and easy-to-use alerting library for Flutter.',
            style: TextStyle(fontSize: 18.0, wordSpacing: 5.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Overlay(
              initialEntries: [
                OverlayEntry(builder: (context) {
                  return FlashPage();
                }),
              ],
            );
          }));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class FlashPage extends StatefulWidget {
  @override
  _FlashPageState createState() => _FlashPageState();
}

class _FlashPageState extends State<FlashPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Flash Demo'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text('Flash'),
                        content: Text(
                            '⚡️A highly customizable, powerful and easy-to-use alerting library for Flutter.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('YES'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('NO'),
                          ),
                        ],
                      );
                    });
              })
        ],
      ),
      body: ClearFocus(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Test FocusScopeNode',
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  Wrap(
                    spacing: 8.0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.center,
                    children: <Widget>[
                      Row(children: <Widget>[Text('Flash Toast')]),
                      ElevatedButton(
                        onPressed: () =>
                            context.showToast(Text('message (Queue)')),
                        child: Text('Toast'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.showToast(
                            Text('message'),
                            shape: StadiumBorder(),
                            queue: false,
                            alignment: Alignment(0.0, -0.3),
                          );
                        },
                        child: Text('Toast'),
                      ),
                      Row(children: <Widget>[Text('Flash Bar')]),
                      ElevatedButton(
                        onPressed: () => context.showFlash<bool>(
                          builder: (context, controller) => FlashBar(
                            controller: controller,
                            indicatorColor: Colors.red,
                            icon: Icon(Icons.tips_and_updates_outlined),
                            title: Text('Flash Title'),
                            content: Text('This is basic flash.'),
                            actions: [
                              TextButton(
                                  onPressed: controller.dismiss,
                                  child: Text('Cancel')),
                              TextButton(
                                  onPressed: () => controller.dismiss(true),
                                  child: Text('Ok'))
                            ],
                          ),
                        ),
                        child: Text('Basics'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.showFlash<bool>(
                          barrierDismissible: true,
                          duration: const Duration(seconds: 3),
                          builder: (context, controller) => FlashBar(
                            controller: controller,
                            forwardAnimationCurve: Curves.easeInCirc,
                            reverseAnimationCurve: Curves.bounceIn,
                            position: FlashPosition.top,
                            indicatorColor: Colors.red,
                            icon: Icon(Icons.tips_and_updates_outlined),
                            title: Text('Flash Title'),
                            content: Text('This is basic flash.'),
                            actions: [
                              TextButton(
                                  onPressed: controller.dismiss,
                                  child: Text('Cancel')),
                              TextButton(
                                  onPressed: () => controller.dismiss(true),
                                  child: Text('Ok'))
                            ],
                          ),
                        ),
                        child: Text('Duration | Top | Dismissible'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.showFlash<bool>(
                          barrierColor: Colors.black54,
                          barrierBlur: 16,
                          barrierDismissible: true,
                          builder: (context, controller) => FlashBar(
                            controller: controller,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16)),
                              side: BorderSide(),
                            ),
                            clipBehavior: Clip.hardEdge,
                            indicatorColor: Colors.blue,
                            icon: Icon(Icons.tips_and_updates_outlined),
                            title: Text('Flash Title'),
                            content: Text('This is basic flash.'),
                            actions: [
                              TextButton(
                                  onPressed: controller.dismiss,
                                  child: Text('Cancel')),
                              TextButton(
                                  onPressed: () => controller.dismiss(true),
                                  child: Text('Ok'))
                            ],
                          ),
                        ),
                        child: Text('Bottom | Floating | Dismissible'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.showFlash<bool>(
                          builder: (context, controller) => FlashBar(
                            controller: controller,
                            behavior: FlashBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              side: BorderSide(
                                color: Colors.yellow,
                                strokeAlign: BorderSide.strokeAlignInside,
                              ),
                            ),
                            margin: const EdgeInsets.all(32.0),
                            clipBehavior: Clip.antiAlias,
                            indicatorColor: Colors.amber,
                            icon: Icon(Icons.tips_and_updates_outlined),
                            title: Text('Flash Title'),
                            content: Text('This is basic flash.'),
                          ),
                        ),
                        child: Text('Bottom | Fixed | Margin'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.showFlash<bool>(
                          persistent: false,
                          builder: (context, controller) => FlashBar(
                            controller: controller,
                            behavior: FlashBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              side: BorderSide(
                                color: Colors.yellow,
                                strokeAlign: BorderSide.strokeAlignInside,
                              ),
                            ),
                            margin: const EdgeInsets.all(32.0),
                            clipBehavior: Clip.antiAlias,
                            indicatorColor: Colors.red,
                            icon: Icon(Icons.tips_and_updates_outlined),
                            title: Text('Flash Title'),
                            content: Text('This is basic flash.'),
                          ),
                        ),
                        child: Text('Bottom | Fixed | Nonpersistent'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final editController = TextEditingController();
                          context
                              .showFlash<String>(
                                persistent: false,
                                barrierColor: Colors.black54,
                                barrierDismissible: true,
                                builder: (context, controller) => FlashBar(
                                  controller: controller,
                                  clipBehavior: Clip.antiAlias,
                                  indicatorColor: Colors.red,
                                  icon: Icon(Icons.tips_and_updates_outlined),
                                  title: Text('Flash Title'),
                                  content: TextField(
                                    controller: editController,
                                    autofocus: true,
                                  ),
                                  primaryAction: IconButton(
                                    onPressed: () =>
                                        controller.dismiss(editController.text),
                                    icon: Icon(Icons.send),
                                  ),
                                ),
                              )
                              .then((value) => value == null
                                  ? context.showErrorBar(
                                      position: FlashPosition.top,
                                      content: Text('Say nothing!'),
                                    )
                                  : context.showSuccessBar(
                                      position: FlashPosition.top,
                                      icon: const Icon(Icons.support_agent),
                                      content: Text('Say: $value'),
                                    ));
                        },
                        child: Text('Bottom | Input | Nonpersistent'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.showInfoBar(
                            content: Text('I am Info Bar!')),
                        child: Text('Flash Info Bar'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.showSuccessBar(
                            content: Text('I am Success Bar!')),
                        child: Text('Flash Success Bar'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.showErrorBar(
                          content: Text('I am Error Bar!'),
                          primaryActionBuilder: (context, controller) {
                            return IconButton(
                              onPressed: controller.dismiss,
                              icon: Icon(Icons.undo),
                            );
                          },
                        ),
                        child: Text('Flash Error Bar'),
                      ),
                      Row(children: <Widget>[Text('Flash Dialog')]),
                      ElevatedButton(
                        onPressed: () => context.showFlash(
                          barrierColor: Colors.black54,
                          barrierDismissible: true,
                          builder: (context, controller) => FadeTransition(
                            opacity: controller.controller,
                            child: AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                side: BorderSide(),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 24.0,
                                  top: 16.0,
                                  right: 24.0,
                                  bottom: 16.0),
                              title: Text('Title'),
                              content: Text('Content'),
                              actions: [
                                TextButton(
                                  onPressed: controller.dismiss,
                                  child: Text('Ok'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        child: Text('Alert Dialog'),
                      ),
                      Row(children: <Widget>[Text('Modal Flash')]),
                      ElevatedButton(
                        onPressed: () => context.showModalFlash(
                          barrierBlur: 16,
                          builder: (context, controller) => FlashBar(
                            controller: controller,
                            behavior: FlashBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              side: BorderSide(
                                color: Colors.yellow,
                                strokeAlign: BorderSide.strokeAlignInside,
                              ),
                            ),
                            margin: const EdgeInsets.all(32.0),
                            clipBehavior: Clip.antiAlias,
                            indicatorColor: Colors.amber,
                            icon: Icon(Icons.tips_and_updates_outlined),
                            title: Text('Flash Title'),
                            content: Text('This is basic flash.'),
                          ),
                        ),
                        child: Text('Bar | Bottom | Floating | Margin'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.showModalFlash(
                          builder: (context, controller) => RotationTransition(
                            turns: controller.controller
                                .drive(CurveTween(curve: Curves.bounceInOut)),
                            child: FadeTransition(
                              opacity: controller.controller.drive(
                                  CurveTween(curve: Curves.fastOutSlowIn)),
                              child: SlideTransition(
                                position: controller.controller.drive(Tween(
                                    begin: Offset(0.1, 0.1), end: Offset.zero)),
                                child: AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    side: BorderSide(),
                                  ),
                                  contentPadding: EdgeInsets.only(
                                      left: 24.0,
                                      top: 16.0,
                                      right: 24.0,
                                      bottom: 16.0),
                                  title: Text('Title'),
                                  content: Text('Content'),
                                  actions: [
                                    TextButton(
                                      onPressed: controller.dismiss,
                                      child: Text('Ok'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        child: Text('Alert Dialog'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final completer = Completer();
                          Future.delayed(Duration(seconds: 5))
                              .then((_) => completer.complete());
                          context.showBlockDialog(dismissCompleter: completer);
                        },
                        child: Text('Block Dialog'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NextPage())),
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(color: Colors.blueGrey),
    );
  }
}
