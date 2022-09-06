import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
