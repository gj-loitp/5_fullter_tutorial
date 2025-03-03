import 'dart:async';

import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class UrlLauncherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "url_launcher",
        () => {
          Get.back(),
        },
        () => {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/url_launcher"),
        },
      ),
      body: Center(
        child: UrlLauncherHomePage(),
      ),
    );
  }
}

class UrlLauncherHomePage extends StatefulWidget {
  UrlLauncherHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _UrlLauncherHomePageState createState() => _UrlLauncherHomePageState();
}

class _UrlLauncherHomePageState extends State<UrlLauncherHomePage> {
  Future<void>? _launched;
  String _phone = '';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithDomStorage(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableDomStorage: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
          forceSafariVC: true,
        );
      }
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.facebook.com/hoidammedocsach';
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (String text) => _phone = text,
              decoration: const InputDecoration(
                  hintText: 'Input the phone number to launch'),
            ),
            SizedBox(height: DimenConstants.marginPaddingMedium),
            ElevatedButton(
              onPressed: () => setState(() {
                _launched = _makePhoneCall('tel:$_phone');
              }),
              child: const Text('Make phone call'),
            ),
            const Padding(
              padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
              child: Text(toLaunch),
            ),
            ElevatedButton(
              onPressed: () => setState(() {
                _launched = _launchInBrowser(toLaunch);
              }),
              child: const Text('Launch in browser'),
            ),
            const Padding(
                padding: EdgeInsets.all(DimenConstants.marginPaddingMedium)),
            ElevatedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewOrVC(toLaunch);
              }),
              child: const Text('Launch in app'),
            ),
            const Padding(
                padding: EdgeInsets.all(DimenConstants.marginPaddingSmall)),
            ElevatedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewWithJavaScript(toLaunch);
              }),
              child: const Text('Launch in app(JavaScript ON)'),
            ),
            const Padding(
                padding: EdgeInsets.all(DimenConstants.marginPaddingSmall)),
            ElevatedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewWithDomStorage(toLaunch);
              }),
              child: const Text('Launch in app(DOM storage ON)'),
            ),
            const Padding(
                padding: EdgeInsets.all(DimenConstants.marginPaddingMedium)),
            ElevatedButton(
              onPressed: () => setState(() {
                _launched = _launchUniversalLinkIos(toLaunch);
              }),
              child: const Text(
                  'Launch a universal link in a native app, fallback to Safari.(Youtube)'),
            ),
            const Padding(
                padding: EdgeInsets.all(DimenConstants.marginPaddingMedium)),
            ElevatedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewOrVC(toLaunch);
                Timer(const Duration(seconds: 5), () {
                  print('Closing WebView after 5 seconds...');
                  closeWebView();
                });
              }),
              child: const Text('Launch in app + close after 5 seconds'),
            ),
            const Padding(
                padding: EdgeInsets.all(DimenConstants.marginPaddingMedium)),
            FutureBuilder<void>(future: _launched, builder: _launchStatus),
          ],
        ),
      ],
    );
  }
}
