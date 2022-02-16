import 'package:flutter/material.dart';

class HomeItem {
  const HomeItem(
    this.index,
    this.title,
    this.subtitle,
    this.color,
  );

  final int index;
  final String title;
  final String? subtitle;
  final Color? color;
}
