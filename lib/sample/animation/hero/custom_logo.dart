import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final double size;

  CustomLogo({this.size = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: size,
      height: size,
      child: Center(
        child: Image.asset(
          "assets/images/gallery1.jpg",
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
