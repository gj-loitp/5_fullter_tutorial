import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:simple_url_preview/simple_url_preview.dart';

class SimpleUrlPreviewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimpleUrlPreviewScreenState();
  }
}

class _SimpleUrlPreviewScreenState
    extends BaseStatefulState<SimpleUrlPreviewScreen> {
  String _url = '';

  _onUrlChanged(String updatedUrl) {
    setState(() {
      _url = updatedUrl;
    });
  }

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
        "SimpleUrlPreviewScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/simple_url_preview");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getText("url: $_url"),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          SimpleUrlPreview(
            url: _url,
            bgColor: Colors.red,
            isClosable: true,
            titleLines: 2,
            descriptionLines: 3,
            imageLoaderColor: Colors.yellow,
            previewHeight: 150,
            previewContainerPadding:
                EdgeInsets.all(DimenConstants.marginPaddingMedium),
            onTap: () {
              showSnackBarFull("Hi", "onTap");
            },
            titleStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            descriptionStyle: TextStyle(
              fontSize: 14,
              color: Theme.of(context).primaryColor,
            ),
            siteNameStyle: TextStyle(
              fontSize: 14,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              onChanged: (newValue) => _onUrlChanged(newValue),
              decoration: InputDecoration(
                hintText: 'Enter the url',
              ),
            ),
          ),
          SizedBox(height: DimenConstants.marginPaddingLarge),
          SimpleUrlPreview(
            url: 'https://pub.dev/',
          ),
          SimpleUrlPreview(
            url: 'https://pub.dev/',
            previewHeight: 200,
            previewContainerPadding: EdgeInsets.all(10),
          ),
          SimpleUrlPreview(
            url: 'https://pub.dev/',
            bgColor: Colors.red,
          ),
          SimpleUrlPreview(
            url: 'https://pub.dev/',
            titleStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            descriptionStyle: TextStyle(
              fontSize: 14,
              color: Theme.of(context).primaryColor,
            ),
            siteNameStyle: TextStyle(
              fontSize: 14,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SimpleUrlPreview(
            url: 'https://pub.dev/',
            isClosable: true,
          ),
          SimpleUrlPreview(
            url: 'https://pub.dev/',
            titleLines: 1,
            descriptionLines: 2,
            imageLoaderColor: Colors.white,
          ),
          SimpleUrlPreview(
            url: 'https://pub.dev/',
            onTap: () => print('Hello Flutter URL Preview'),
          ),
        ],
      ),
    );
  }
}
