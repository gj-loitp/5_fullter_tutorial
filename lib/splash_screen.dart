import 'dart:convert';
import 'dart:io';

import 'package:com.roy93group.flutter_tutorial/lib/common/const/string_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lib/common/const/dimen_constants.dart';
import 'lib/util/shared_preferences_util.dart';
import 'main_menu_screen.dart';
import 'sample/model/gg.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends BaseStatefulState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkGoogleDrive();
  }

  void _checkGoogleDrive() async {
    bool isReady = await SharedPreferencesUtil.isReady();
    bool isFullData = await SharedPreferencesUtil.isFullData();
    if (isReady && isFullData) {
      Get.off(MenuScreen());
    } else {
      try {
        //https://drive.google.com/drive/u/0/folders/1kevDB8a5a-POwkGupg3xOiZByoGjAe3B
        var response = await Dio().get(
            'https://drive.google.com/uc?export=download&id=1bCwCPRFFW556FvS9lrqxRymKZIGTj_n7');
        // print(response);
        Map<String, dynamic> results = json.decode(response.data);
        var gg = GG.fromJson(results);
        print("_checkGoogleDrive >>> ${jsonEncode(gg)}");
        await SharedPreferencesUtil.setGG(gg);
        bool isReady = await SharedPreferencesUtil.isReady();
        if (isReady) {
          Get.off(MenuScreen());
        } else {
          showErrorDialog(
            StringConstants.warning,
            "500 Internal Server Error",
            "Exit",
            () {
              exit(0);
            },
          );
        }
      } catch (e) {
        print(e);
      }
    }
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
