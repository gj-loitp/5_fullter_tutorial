import 'package:flutter/material.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'parent_page.dart';

class Child1Page extends StatefulWidget {
  final String? title;
  final ValueChanged<String>? child2Action3;
  final ValueChanged<String>? child2Action2;

  const Child1Page({
    Key? key,
    this.title,
    this.child2Action2,
    this.child2Action3,
  }) : super(key: key);

  @override
  Child1PageState createState() => Child1PageState();
}

class Child1PageState extends State<Child1Page> {
  String value = "Page 1";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            widget.title ?? value,
            style: Theme.of(context).primaryTextTheme.headline5,
          ),
          UIUtils.getButton("Action 2", () {
            widget.child2Action2!("Update from Child 1 " +
                DateTime.now().millisecondsSinceEpoch.toString());
          }),
          UIUtils.getButton("Action 3", () {
            widget.child2Action3!("Update from Child 1 " +
                DateTime.now().millisecondsSinceEpoch.toString());
          }),
          UIUtils.getButton("Action 4", () {
            final controller = ParentProvider.of(context)!.tabController!;
            controller.index = 1;
          }),
        ],
      ),
    );
  }
}
