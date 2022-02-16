import 'package:flutter/material.dart';

import 'page/arrows_demo.dart';
import 'page/custom_demo.dart';
import 'page/rrect_demo.dart';
import 'page/semi_circle_demo.dart';

//https://medium.com/flutter-community/creating-draggable-scrollbar-in-flutter-a0ae8cf3143b
//https://github.com/fluttercommunity/flutter-draggable-scrollbar

class DraggableScrollBarDemo extends StatefulWidget {
  @override
  _DraggableScrollBarDemoState createState() => _DraggableScrollBarDemoState();
}

class _DraggableScrollBarDemoState extends State<DraggableScrollBarDemo> {
  ScrollController _semicircleController = ScrollController();
  ScrollController _arrowsController = ScrollController();
  ScrollController _rrectController = ScrollController();
  ScrollController _customController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("DraggableScrollBarDemo"),
          bottom: TabBar(tabs: [
            Tab(text: 'Semicircle'),
            Tab(text: 'Arrows'),
            Tab(text: 'RRect'),
            Tab(text: 'Custom'),
          ]),
        ),
        body: TabBarView(children: [
          SemicircleDemo(controller: _semicircleController),
          ArrowsDemo(controller: _arrowsController),
          RRectDemo(controller: _rrectController),
          CustomDemo(controller: _customController),
        ]),
      ),
    );
  }
}
