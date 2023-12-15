import 'dart:convert';

import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:dart_rss/dart_rss.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DartRssScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DartRssScreenState();
  }
}

class _DartRssScreenState extends BaseStatefulState<DartRssScreen> {
  var _s = "";

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
        "DartRssScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser("https://pub.dev/packages/dart_rss");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "Read RSS",
            () {
              _get("http://xsktcantho.com.vn/rss.asp?id=1&d=K1T7_2023");
            },
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          UIUtils.getText(_s),
        ],
      ),
    );
  }

  Future<void> _get(String rss) async {
    debugPrint("roy93~ _get $rss");

    final client = http.Client();
    final url = Uri.parse(rss);
    final response = await client.get(url);
    debugPrint("roy93~ response.statusCode ${response.statusCode}");
    if (response.statusCode == 200) {
      // debugPrint("roy93~ response.bodyBytes ${response.bodyBytes}");
      // debugPrint("roy93~ response.body ${response.body}");
      const utf8Decoder = Utf8Decoder(allowMalformed: true);
      final decodedBytes = utf8Decoder.convert(response.bodyBytes);
      debugPrint("roy93~ decodedBytes $decodedBytes");

      var rssFeed = new RssFeed.parse(decodedBytes);

      _s = "================";
      _s += "\nrssFeed $rssFeed";
      _s += "\ntitle ${rssFeed.title}";
      _s += "\nlink ${rssFeed.link}";
      _s += "\ndescription ${rssFeed.description}";
      _s += "\ncopyright ${rssFeed.copyright}";
      _s += "\nimage ${rssFeed.image}";
      _s += "\nitems length ${rssFeed.items.length}";
      rssFeed.items.forEach((element) {
        _s += "\n~~~ element ${element.title}~${element.description}~${element.pubDate}";
      });
      _s += "================";
      debugPrint("roy93~ $_s");
      setState(() {
        _s;
      });
    }
  }
}
