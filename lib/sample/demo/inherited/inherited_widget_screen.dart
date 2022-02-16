import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class InheritedWidgetScreen extends StatefulWidget {
  @override
  _InheritedWidgetScreenState createState() => _InheritedWidgetScreenState();
}

class _InheritedWidgetScreenState extends State<InheritedWidgetScreen> {
  int count = 0;

  void _incrementCounter() => setState(() => count++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "InheritedWidgetScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Root(
        state: this,
        increment: _incrementCounter,
        child: Child(),
      ),
    );
  }
}

class Child extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    Root root = Root.of(context)!;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(DimenConstants.marginPaddingMedium),
          child: UIUtils.getText(
              "InheritedWidget itself does not have the function of writing data. It needs to combine State to obtain the ability to modify data."),
        ),
        Text(
          'show ${root.state.count}',
          style: TextStyle(fontSize: 20),
        ),
        UIUtils.getButton("Add", () {
          root.increment();
        }),
      ],
    );
  }
}

// Support both reading and writing
class Root extends InheritedWidget {
  static Root? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Root>();

  final _InheritedWidgetScreenState state;

  final increment;

  Root({
    Key? key,
    required this.state,
    required this.increment,
    required Widget child,
  }) : super(key: key, child: child);

  // Determine if it needs to be updated
  @override
  bool updateShouldNotify(Root oldWidget) =>
      state.count != oldWidget.state.count;
}

// Only supports reading attributes
class ReadOnlyRoot extends InheritedWidget {
  static ReadOnlyRoot? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Root>() as ReadOnlyRoot?;

  final int count;

  ReadOnlyRoot({
    Key? key,
    required this.count,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(ReadOnlyRoot oldWidget) => count != oldWidget.count;
}
