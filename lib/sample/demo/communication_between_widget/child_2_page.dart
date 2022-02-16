import 'package:flutter/material.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';

import 'parent_page.dart';

class Child2Page extends StatefulWidget {
  final String? title;

  const Child2Page({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Child2PageState createState() => Child2PageState();
}

class Child2PageState extends State<Child2Page> {
  String value = "Page 2";

  @override
  Widget build(BuildContext context) {
    final title = ParentProvider.of(context)!.title;
    return Padding(
      padding: const EdgeInsets.all(DimenConstants.marginPaddingMedium),
      child: Column(
        children: [
          Text(
            title ?? value,
            style: Theme.of(context).primaryTextTheme.headline5,
          ),
        ],
      ),
    );
  }
}
