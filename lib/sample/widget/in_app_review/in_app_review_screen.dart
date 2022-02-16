import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:in_app_review/in_app_review.dart';

enum Availability { LOADING, AVAILABLE, UNAVAILABLE }

extension on Availability {
  String stringify() => this.toString().split('.').last;
}

class InAppReviewScreen extends StatefulWidget {
  @override
  _InAppReviewScreenState createState() => _InAppReviewScreenState();
}

class _InAppReviewScreenState extends State<InAppReviewScreen> {
  final InAppReview _inAppReview = InAppReview.instance;
  String _appStoreId = '';
  String _microsoftStoreId = '';
  Availability _availability = Availability.LOADING;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      try {
        final isAvailable = await _inAppReview.isAvailable();

        setState(() {
          _availability = isAvailable && !Platform.isAndroid
              ? Availability.AVAILABLE
              : Availability.UNAVAILABLE;
        });
      } catch (e) {
        setState(() => _availability = Availability.UNAVAILABLE);
      }
    });
  }

  void _setAppStoreId(String id) => _appStoreId = id;

  void _setMicrosoftStoreId(String id) => _microsoftStoreId = id;

  Future<void> _requestReview() => _inAppReview.requestReview();

  Future<void> _openStoreListing() => _inAppReview.openStoreListing(
        appStoreId: _appStoreId,
        microsoftStoreId: _microsoftStoreId,
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: UIUtils.getAppBar(
          "InAppReviewScreen",
          () {
            Get.back();
          },
          () {
            UrlLauncherUtils.launchInWebViewWithJavaScript(
                "https://pub.dev/packages/in_app_review");
          },
        ),
        body: ListView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          children: [
            UIUtils.getText(
                "Flutter plugin for showing the In-App Review/System Rating pop up on Android, IOS and MacOS. It makes it easy for users to rate your app."),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            Text('InAppReview status: ${_availability.stringify()}'),
            TextField(
              onChanged: _setAppStoreId,
              decoration: InputDecoration(hintText: 'App Store ID'),
            ),
            TextField(
              onChanged: _setMicrosoftStoreId,
              decoration: InputDecoration(hintText: 'Microsoft Store ID'),
            ),
            ElevatedButton(
              onPressed: _requestReview,
              child: Text('Request Review'),
            ),
            ElevatedButton(
              onPressed: _openStoreListing,
              child: Text('Open Store Listing'),
            ),
          ],
        ),
      ),
    );
  }
}
