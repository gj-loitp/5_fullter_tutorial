import 'package:flutter/material.dart';

class Width extends StatelessWidget {
  final double width;

  const Width(this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
