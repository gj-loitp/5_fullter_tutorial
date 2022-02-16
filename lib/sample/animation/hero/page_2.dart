import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'custom_logo.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: "hero1",
                child: Container(
                  padding: EdgeInsets.only(top: 50.0),
                  height: 250.0,
                  width: 200.0,
                  child: CustomLogo(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Hero(
                tag: "hero2",
                child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "Hero Text Suzuki Ducati BMW Honda",
                      style: TextStyle(fontSize: 50.0),
                    )),
              ),
            ),
            UIUtils.getButton("Close", () {
              Get.back();
            }),
          ],
        ),
      ),
    );
  }
}
