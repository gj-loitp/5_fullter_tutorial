import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class TooltipScreen extends StatefulWidget {
  @override
  _TooltipScreenState createState() => _TooltipScreenState();
}

class _TooltipScreenState extends State<TooltipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "TooltipScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                waitDuration: Duration(seconds: 1),
                showDuration: Duration(seconds: 2),
                padding: EdgeInsets.all(5),
                height: 35,
                textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green),
                message: 'My Account',
                child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                message: 'My Account',
                child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
