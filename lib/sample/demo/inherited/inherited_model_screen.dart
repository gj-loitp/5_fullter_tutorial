import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class InheritedModelScreen extends StatefulWidget {
  @override
  _InheritedModelScreenState createState() => _InheritedModelScreenState();
}

class _InheritedModelScreenState extends State<InheritedModelScreen> {
  var inheritedRootModel;

  @override
  void initState() {
    super.initState();
    inheritedRootModel = InheritedRootModel(0);
  }

  add() {
    setState(() {
      inheritedRootModel = InheritedRootModel(inheritedRootModel.count + 1);
    });
  }

  minus() {
    setState(() {
      inheritedRootModel = InheritedRootModel(inheritedRootModel.count - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "InheritedModelScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: InheritedRoot(
          inheritedRootModel: inheritedRootModel,
          add: add,
          minus: minus,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AddWidget(),
              ShowWidget(),
              MinusWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class InheritedRoot extends InheritedWidget {
  final InheritedRootModel? inheritedRootModel;

  final Function() add;
  final Function() minus;

  InheritedRoot({
    Key? key,
    required this.inheritedRootModel,
    required this.add,
    required this.minus,
    required Widget child,
  }) : super(key: key, child: child);

  static InheritedRoot? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedRoot>();
  }

  @override
  bool updateShouldNotify(InheritedRoot oldWidget) {
    return inheritedRootModel != oldWidget.inheritedRootModel;
  }
}

class InheritedRootModel {
  final int? count;

  const InheritedRootModel(this.count);
}

class AddWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final root = InheritedRoot.of(context)!;
    return Container(
      child: UIUtils.getButton("+", root.add),
    );
  }
}

class MinusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final root = InheritedRoot.of(context)!;
    return Container(
      child: UIUtils.getButton(
        "-",
        root.minus,
      ),
    );
  }
}

class ShowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final root = InheritedRoot.of(context)!;

    return Container(
      child: UIUtils.getText('Show ${root.inheritedRootModel!.count}'),
    );
  }
}
