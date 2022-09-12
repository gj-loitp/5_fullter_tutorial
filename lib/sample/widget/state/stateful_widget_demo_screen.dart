import 'package:flutter/material.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
