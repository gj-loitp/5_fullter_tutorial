import 'dart:async';

import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterLinkifyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterLinkifyScreenState();
  }
}

class _FlutterLinkifyScreenState
    extends BaseStatefulState<FlutterLinkifyScreen> {
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
        "flutter_linkify",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_linkify");
        },
      ),
      body: LinkifyExample(),
    );
  }
}

class LinkifyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Center(
          child: Linkify(
            onOpen: _onOpen,
            textScaleFactor: 2.0,
            text: "Made by https://cretezy.com\n\nMail: example@gmail.com",
          ),
        ),
        Center(
          child: SelectableLinkify(
            onOpen: _onOpen,
            textScaleFactor: 4.0,
            text: "Made by https://cretezy.com\n\nMail: example@gmail.com",
          ),
        ),
      ],
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}
