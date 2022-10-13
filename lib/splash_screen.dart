import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lib/common/const/DimenConstants.dart';
import 'main_menu_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    print("delay finish route");
    Get.off(MenuScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150.0),
                child: Image.asset(
                  "assets/images/loitp.JPG",
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: DimenConstants.marginPaddingMedium)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 3,
            )
          ],
        ),
      ),
    );
  }
}
