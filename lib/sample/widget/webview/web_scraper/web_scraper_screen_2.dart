import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/log_dog_utils.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

class WebScraperScreen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WebScraperScreen2State();
  }
}

class _WebScraperScreen2State extends BaseStatefulState<WebScraperScreen2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // initialize WebScraper by passing base url of website
  final webScraper = WebScraper();

  List<Map<String, dynamic>>? _listImages;

  void fetchData() async {
    // Loads web page and downloads into local state of library
    if (await webScraper
        .loadFullURL('https://thichtruyen.vn/danh-muc/truyen-ngon-tinh')) {
      // Dog.i("fetchData success " + webScraper.getPageContent());
      setState(() {
        // productNames = webScraper.getElement(
        //     'div.thumbnail > div.caption > h4 > a.title', ['href', 'title']);
        // productDescriptions = webScraper.getElement(
        //     'div.thumbnail > div.caption > p.description', ['class']);

        // _listImages = webScraper.getElement(
        //     "div.view-category-item > div.view-category-item-infor  > a > h3.view-category-item-title'",
        //     []);

        _listImages = webScraper.getElement("div.tab-text", []);
        _listImages?.forEach((element) {
          Dog.i(">>> " + jsonEncode(element));
        });
      });
    } else {
      Dog.i("fetchData !success");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "WebScraperScreen2",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/web_scraper");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton("fetch", () {
            fetchData();
          }),
          Expanded(
            child: UIUtils.getText(jsonEncode(_listImages)),
          ),
        ],
      ),
    );
  }
}

class Book {
  String title = "";
}
