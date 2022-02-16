import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/widget/webview/web_scraper/web_scraper_screen.dart';
import 'package:hello_word/sample/widget/webview/web_scraper/web_scraper_screen_2.dart';
import 'package:hello_word/sample/widget/webview/web_view_screen.dart';

class MenuWebviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuWebviewScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: CupertinoScrollbar(
        isAlwaysShown: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "WebScraperScreen",
              () {
                Get.to(WebScraperScreen());
              },
            ),
            UIUtils.getButton(
              "WebScraperScreen2",
              () {
                Get.to(WebScraperScreen2());
              },
            ),
            UIUtils.getButton(
              "WebViewScreen",
              () {
                Get.to(WebViewScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
