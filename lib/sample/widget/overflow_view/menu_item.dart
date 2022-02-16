import 'package:flutter/material.dart';
import 'package:hello_word/sample/widget/overflow_view/menu_item_data.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  final MenuItemData data;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Row(
        children: [
          if (data.icon != null) Icon(data.icon),
          if (data.icon != null && data.label != null) SizedBox(width: 8),
          if (data.label != null) Text(data.label!),
        ],
      ),
    );
  }
}
