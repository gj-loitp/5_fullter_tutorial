import 'package:flutter/material.dart';

ListTile getListTile(
  icon,
  iconColor,
  titleText,
  Function() onPressed,
) {
  return new ListTile(
    leading: new Container(
      width: 4.0,
      child: Icon(
        icon,
        color: iconColor,
        size: 24.0,
      ),
    ),
    title: new Text(
      titleText,
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
      ),
    ),
    onTap: () => onPressed.call(),
  );
}
