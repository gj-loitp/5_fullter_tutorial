import 'package:flutter/material.dart';
import 'package:hello_word/sample/widget/overflow_view/menu_item.dart';
import 'package:hello_word/sample/widget/overflow_view/menu_item_data.dart';
import 'package:overflow_view/overflow_view.dart';

class CommandBar extends StatelessWidget {
  const CommandBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MenuItemData> commands = <MenuItemData>[
      MenuItemData(id: 'a', label: 'File'),
      MenuItemData(id: 'b', icon: Icons.save, label: 'Save'),
      MenuItemData(id: 'c', label: 'Edit'),
      MenuItemData(id: 'd', label: 'View'),
      MenuItemData(id: 'e', icon: Icons.exit_to_app),
      MenuItemData(id: 'f', label: 'Long Command'),
      MenuItemData(id: 'f', label: 'Very Long Command'),
      MenuItemData(id: 'f', label: 'Very very Long Command'),
      MenuItemData(id: 'f', label: 'Help'),
    ];

    return OverflowView.flexible(
      spacing: -4,
      children: [...commands.map((e) => MenuItem(data: e))],
      builder: (context, remaining) {
        return PopupMenuButton<String>(
          icon: Icon(Icons.menu),
          itemBuilder: (context) {
            return commands
                .skip(commands.length - remaining)
                .map((e) => PopupMenuItem<String>(
                      value: e.id,
                      child: MenuItem(data: e),
                    ))
                .toList();
          },
        );
      },
    );
  }
}
