import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtils {
  static String getLinkGit(String path) {
    return "https://github.com/tplloi/fullter_hello_word/tree/master/$path";
  }

  static Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      print("Could not launch $url");
    }
  }

  static Future<void> launchInWebViewWithJavaScript(String url) async {
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

  static Future<void> makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future<void> rateApp(
    String? appStoreId,
    String? microsoftStoreId,
  ) =>
      InAppReview.instance.openStoreListing(
        appStoreId: appStoreId,
        microsoftStoreId: microsoftStoreId,
      );

  static void moreApp() {
    UrlLauncherUtils.launchInBrowser(
        "https://play.google.com/store/apps/dev?id=6295678835392563583");
  }
}
