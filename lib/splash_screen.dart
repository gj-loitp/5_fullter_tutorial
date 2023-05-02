import 'dart:convert';
import 'dart:io';

import 'package:com.roy93group.flutter_tutorial/lib/common/const/color_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/string_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/duration_util.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

    // _checkGoogleDrive();
    DurationUtils.delay(1000, () {
      Get.off(MenuScreen());
    });
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
          if (kDebugMode) {
            showErrorDialog(
              StringConstants.warning,
              "Debug mode: 500 Internal Server Error",
              "Debug mode, tap to continue",
              () {
                Get.off(MenuScreen());
              },
            );
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
        }
      } catch (e) {
        print(e);
        var connectivityResult = await (Connectivity().checkConnectivity());
        if (connectivityResult == ConnectivityResult.mobile) {
          // I am connected to a mobile network.
        } else if (connectivityResult == ConnectivityResult.wifi) {
          // I am connected to a wifi network.
        } else {
          showErrorDialog(
            StringConstants.warning,
            "No internet connection",
            "Retry",
            () {
              _checkGoogleDrive();
            },
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150.0),
                child: Image.asset(
                  "assets/images/coder.png",
                  width: 150,
                  height: 150,
                  color: ColorConstants.appColor,
                ),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
