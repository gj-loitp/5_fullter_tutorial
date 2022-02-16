import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';

class DioScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DioScreenState();
  }
}

class _DioScreenState extends BaseStatefulState<DioScreen> {
  String _responseThichTruyen = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "DioScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/dio");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getText(
              "A powerful Http client for Dart, which supports Interceptors, Global configuration, FormData, Request Cancellation, File downloading, Timeout etc."),
          UIUtils.getButton("Get Google", () {
            _getHttp();
          }),
          UIUtils.getText(_responseThichTruyen),
          //TODO loitpp https://pub.dev/packages/web_scraper
        ],
      ),
    );
  }

  void _getHttp() async {
    try {
      var response = await Dio().get('http://www.thichtruyen.vn');
      print(response);
      setState(() {
        _responseThichTruyen = response.data;
      });
    } catch (e) {
      print(e);
    }
  }
}
