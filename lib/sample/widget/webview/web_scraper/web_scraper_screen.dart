import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

class WebScraperScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WebScraperScreenState();
  }
}

class _WebScraperScreenState extends BaseStatefulState<WebScraperScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // initialize WebScraper by passing base url of website
  final webScraper = WebScraper('https://webscraper.io');

  // Response of getElement is always List<Map<String, dynamic>>
  List<Map<String, dynamic>>? productNames;
  late List<Map<String, dynamic>> productDescriptions;

  void _fetchProducts() async {
    // Loads web page and downloads into local state of library
    if (await webScraper
        .loadWebPage('/test-sites/e-commerce/allinone/computers/laptops')) {
      setState(() {
        // getElement takes the address of html tag/element and attributes you want to scrap from website
        // it will return the attributes in the same order passed
        productNames = webScraper.getElement(
            'div.thumbnail > div.caption > h4 > a.title', ['href', 'title']);
        productDescriptions = webScraper.getElement(
            'div.thumbnail > div.caption > p.description', ['class']);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "WebScraperScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/web_scraper");
        },
      ),
      body: Column(
        children: [
          UIUtils.getButton("fetchProducts", () {
            _fetchProducts();
          }),
          Expanded(
            child: _buildData(),
          ),
        ],
      ),
    );
  }

  Widget _buildData() {
    if (productNames == null) {
      return Container();
    } else {
      return ListView.builder(
        itemCount: productNames!.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> attributes = productNames![index]['attributes'];
          return ExpansionTile(
            title: Text(attributes['title']),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(productDescriptions[index]['title']),
                      margin: EdgeInsets.only(bottom: 10.0),
                    ),
                    InkWell(
                      onTap: () {
                        // uses UI Launcher to launch in web browser & minor tweaks to generate url
                        launch(webScraper.baseUrl! + attributes['href']);
                      },
                      child: Text(
                        'View Product',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      );
    }
  }
}
