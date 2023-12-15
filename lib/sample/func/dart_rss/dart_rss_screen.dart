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
          )
        ],
      ),
    );
  }

  void _get(String rss) {
    debugPrint("roy93~ _get $rss");

    final client = http.Client();

    client.get(Uri.parse(rss)).then((response) {
      return response.body;
    }).then((bodyString) {
      final rssFeed = RssFeed.parse(bodyString);
      debugPrint("roy93~ rssFeed $rssFeed");

      debugPrint("roy93~ title ${rssFeed.title}");
      debugPrint("roy93~ link ${rssFeed.link}");
      debugPrint("roy93~ description ${rssFeed.description}");
      debugPrint("roy93~ copyright ${rssFeed.copyright}");
      debugPrint("roy93~ image ${rssFeed.image}");
      debugPrint("roy93~ items length ${rssFeed.items.length}");
      var _list = rssFeed.items;
      _list.forEach((element) {
        debugPrint("roy93~ element ${element.title}~${element.description}~${element.pubDate}");
      });

      showSnackBarFull("Get data success, check logcat to view the data response", "rssFeed.title ${rssFeed.title}");

      return rssFeed;
    });
  }
}
