import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class ValueListenableBuilderScreen extends StatefulWidget {
  @override
  _ValueListenableBuilderScreenState createState() =>
      _ValueListenableBuilderScreenState();
}

class _ValueListenableBuilderScreenState
    extends State<ValueListenableBuilderScreen> {
  int _counter = 0;

  final ValueNotifier<int> _notifier = ValueNotifier<int>(0);

  void _incrementCounter() {
    _counter++;
    _notifier.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ValueListenableBuilderScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: DimenConstants.marginPaddingMedium),
            ValueListenableBuilder(
              valueListenable: _notifier,
              builder: (context, dynamic value, widget) {
                return UIUtils.getText(
                    'Click with ValueListenableBuilder $value');
              },
            ),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            UIUtils.getText('Click without setState $_counter'),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            UIUtils.getButton(
              "Click me",
              () => {
                _incrementCounter(),
              },
            ),
          ],
        ),
      ),
    );
  }
}
