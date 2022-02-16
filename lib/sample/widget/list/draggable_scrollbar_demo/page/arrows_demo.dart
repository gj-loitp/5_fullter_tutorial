import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';

class ArrowsDemo extends StatelessWidget {
  final ScrollController controller;

  const ArrowsDemo({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final _itemExtent = 100.0;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollbar.arrows(
      alwaysVisibleScrollThumb: true,
      backgroundColor: Colors.grey,
      padding: EdgeInsets.only(right: 4.0),
      labelTextBuilder: (double offset) => Text("${offset ~/ _itemExtent}",
          style: TextStyle(color: Colors.white)),
      controller: controller,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        controller: controller,
        itemCount: 100,
        itemExtent: _itemExtent,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.purple[index % 9 * 100],
              child: Center(
                child: Text(
                  index.toString(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
