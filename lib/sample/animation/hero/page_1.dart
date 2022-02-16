import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'custom_logo.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Hero(
                tag: "hero1",
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  child: CustomLogo(),
                ),
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
