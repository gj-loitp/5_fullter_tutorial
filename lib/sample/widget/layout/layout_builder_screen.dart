import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class LayoutBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "LayoutBuilderScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: LayoutBuilderWidget(),
    );
  }
}

class LayoutBuilderWidget extends StatefulWidget {
  @override
  _LayoutBuilderWidgetState createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  double _index = 300;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //'The direct child of LayoutBuilder will match the size of the MatchParent. To maintain the size of the child, you need to add an Align or similar widget.
          Slider(
            value: _index,
            min: 300,
            max: 400,
            onChanged: (value) {
              setState(() => _index = value);
            },
          ),
          Container(
            color: Colors.red,
            width: _index,
            height: _index,
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 350) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 100,
                    height: 300,
                    color: Colors.yellow,
                  ),
                );
              } else {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 300,
                    height: 100,
                    color: Colors.blue,
                  ),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
