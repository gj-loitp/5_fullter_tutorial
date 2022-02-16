import 'package:flutter/material.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class StatefulWidgetDemoScreen extends StatefulWidget {
  @override
  StatefulWidgetDemoScreenState createState() {
    return StatefulWidgetDemoScreenState();
  }
}

class StatefulWidgetDemoScreenState extends State<StatefulWidgetDemoScreen> {
  int _counter = 0;
  List<String> _listString = ['Flutter', 'is', 'cool', "and", "awesome!"];
  String _displayedString = "Hello World!";

  void onPressOfButton() {
    setState(() {
      _displayedString = _listString[_counter];
      _counter = _counter < 4 ? _counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidgetDemoScreen"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_displayedString, style: TextStyle(fontSize: 40.0)),
              Padding(
                  padding: EdgeInsets.all(DimenConstants.marginPaddingMedium)),
              UIUtils.getButton("Press me", () {
                onPressOfButton();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
