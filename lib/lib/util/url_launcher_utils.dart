import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtils {
  static String getLinkGit(String path) {
    return "https://github.com/tplloi/fullter_tutorial/tree/master/$path";
  }

  static Future<void> launchInBrowser(String url, {LaunchMode mode = LaunchMode.inAppBrowserView}) async {
    final Uri toLaunch = Uri.parse(url);
    if (!await launchUrl(toLaunch, mode: mode)) {
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
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
    launchInBrowser("https://play.google.com/store/apps/developer?id=Roy93Group");
  }

  static void launchPolicy() {
    // launchInBrowser("https://loitp.wordpress.com/2018/06/10/privacy-policy/");
    launchInBrowser("https://loitp.notion.site/loitp/Privacy-Policy-319b1cd8783942fa8923d2a3c9bce60f/");
  }
}
