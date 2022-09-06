import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';

import 'custom_logo.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
