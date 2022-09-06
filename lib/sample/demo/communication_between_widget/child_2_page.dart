import 'package:flutter/material.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';

import 'parent_page.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
