import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';

class CustomDemo extends StatelessWidget {
  final ScrollController controller;

  const CustomDemo({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollbar(
      controller: controller,
      child: ListView.builder(
        controller: controller,
        itemCount: 100,
        itemExtent: 100.0,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.cyan[index % 9 * 100],
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          );
        },
      ),
      heightScrollThumb: 48.0,
      backgroundColor: Colors.red,
      scrollThumbBuilder: (
        Color backgroundColor,
        Animation<double> thumbAnimation,
        Animation<double> labelAnimation,
        double height, {
        Text? labelText,
        BoxConstraints? labelConstraints,
      }) {
        return FadeTransition(
          opacity: thumbAnimation,
          child: Container(
            height: height,
            width: 20.0,
            color: backgroundColor,
          ),
        );
      },
    );
  }
}
