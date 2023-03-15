import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pip_view/pip_view.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PipViewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PipViewScreenState();
  }
}

class _PipViewScreenState extends BaseStatefulState<PipViewScreen> {
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
        "pip_view",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/pip_view");
        },
      ),
      body: ExampleApp(),
    );
  }
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PIPView(
      builder: (context, isFloating) {
        return Scaffold(
          resizeToAvoidBottomInset: !isFloating,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('This page will float!'),
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text('Start floating!'),
                    onPressed: () {
                      PIPView.of(context)!.presentBelow(BackgroundScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class BackgroundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('This is the background page!'),
              Text('If you tap on the floating screen, it stops floating.'),
              Text('Navigation works as expected.'),
              MaterialButton(
                color: Theme.of(context).primaryColor,
                child: Text('Push to navigation'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => NavigatedScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigatedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigated Screen'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('This is the page you navigated to.'),
              Text('See how it stays below the floating page?'),
              Text('Just amazing!'),
              Spacer(),
              Text('It also avoids keyboard!'),
              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}
