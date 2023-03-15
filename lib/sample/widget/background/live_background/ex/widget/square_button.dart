import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.bgColor = Colors.white,
    this.textColor = Colors.blueAccent,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(15)),
          child: text.text.size(20).color(textColor).makeCentered(),
        ));
  }
}
