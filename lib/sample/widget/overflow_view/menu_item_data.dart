import 'package:flutter/material.dart';

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
