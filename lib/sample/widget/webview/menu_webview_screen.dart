import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/webview/web_scraper/web_scraper_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/webview/web_scraper/web_scraper_screen_2.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/webview/web_view_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'csslib/csslib_screen.dart';
import 'html/html_screen.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
        thumbVisibility: true,
        child: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getButton(
              "csslib",
              () {
                Get.to(() => CsslibScreen());
              },
              description:
                  "A library for parsing and analyzing CSS (Cascading Style Sheets)",
            ),
            UIUtils.getButton(
              "html",
              () {
                Get.to(() => HtmlScreen());
              },
              description:
                  "APIs for parsing and manipulating HTML content outside the browser.",
            ),
            UIUtils.getButton(
              "WebScraperScreen",
              () {
                Get.to(() => WebScraperScreen());
              },
            ),
            UIUtils.getButton(
              "WebScraperScreen2",
              () {
                Get.to(() => WebScraperScreen2());
              },
            ),
            UIUtils.getButton(
              "WebViewScreen",
              () {
                Get.to(() => WebViewScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
