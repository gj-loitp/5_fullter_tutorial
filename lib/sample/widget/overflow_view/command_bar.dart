import 'package:flutter/material.dart';
import 'package:overflow_view/overflow_view.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
      children: [...commands.map((e) => _MenuItem(data: e))],
      builder: (context, remaining) {
        return PopupMenuButton<String>(
          icon: Icon(Icons.menu),
          itemBuilder: (context) {
            return commands
                .skip(commands.length - remaining)
                .map((e) => PopupMenuItem<String>(
                      value: e.id,
                      child: _MenuItem(data: e),
                    ))
                .toList();
          },
        );
      },
    );
  }
}

class MenuItemData {
  const MenuItemData({
    required this.id,
    this.label,
    this.icon,
  });

  final String id;
  final String? label;
  final IconData? icon;
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
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
