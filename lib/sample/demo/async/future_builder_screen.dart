import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class FutureBuilderScreen extends StatefulWidget {
  @override
  _FutureBuilderScreenState createState() => _FutureBuilderScreenState();
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {
  var _show = '';
  bool _isClick = false;

  Future<String> _getData() async {
    await Future.delayed(Duration(seconds: 3));
    return Future.value(
      'Fetch data from mock',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "FutureBuilderScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            child: Center(
              child: FutureBuilder<String>(
                future: _isClick ? _getData() : null,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      print("ConnectionState.none");
                      return UIUtils.getText("No FutureBuilder attached");
                    case ConnectionState.waiting:
                      print("ConnectionState.waiting");
                      return CircularProgressIndicator();
                    case ConnectionState.active:
                      print("ConnectionState.active");
                      return CircularProgressIndicator();
                    case ConnectionState.done:
                      print("ConnectionState.done");
                      if (snapshot.hasError) {
                        return UIUtils.getText(snapshot.error.toString());
                      } else {
                        return UIUtils.getText(snapshot.data.toString());
                      }
                    default:
                      return CircularProgressIndicator();
                  }
                },
              ),
            ),
          ),
          UIUtils.getButton("Fetch data", () {
            setState(() {
              _isClick = !_isClick;
            });
          }),
        ],
      ),
    );
  }
}
