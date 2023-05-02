import 'package:applovin_max/applovin_max.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/main.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/pdf_text/pdf_text_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/recase/recase_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/remove_emoji/remove_emoji_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/demo/scanner/menu_scanner_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

import '../../lib/util/log_dog_utils.dart';
import '../../lib/util/url_launcher_utils.dart';
import '../applovin/applovin_screen.dart';
import 'advance_pdf_viewer/advance_pdf_viewer_screen.dart';
import 'battery_plus/battery_plus_screen.dart';
import 'clipboard/clipboard_screen.dart';
import 'connectivity_plus/connectivity_plus_screen.dart';
import 'counter/counter_screen.dart';
import 'crypto/crypto_screen.dart';
import 'device_info_plus/device_info_plus_screen.dart';
import 'diacritic/diacritic_screen.dart';
import 'dio/dio_screen.dart';
import 'easy_debounce/easy_debounce_screen.dart';
import 'encypt/encrypt_screen.dart';
import 'event_bus/event_bus_screen.dart';
import 'firebase_remote_config/firebase_remote_config_screen.dart';
import 'flutter_bloc/menu_flutter_block_screen.dart';
import 'flutter_local_notifications/flutter_local_notifications_screen.dart';
import 'flutter_offline/flutter_offline_screen.dart';
import 'flutter_screen_lock/flutter_screen_lock_screen.dart';
import 'focus_detector/focus_detector_screen.dart';
import 'getx/get_x_screen.dart';
import 'html2md/html2md_screen.dart';
import 'image_gallery_saver/image_gallery_saver_screen.dart';
import 'inherited/menu_inherited_screen.dart';
import 'load_local_json/load_local_json_screen.dart';
import 'local_auth/local_auth_screen.dart';
import 'one_target_mobile_sdk/one_target_mobile_sdk_screen.dart';
import 'package_info_plus/package_info_plus_screen.dart';
import 'permission_handler/permission_handler_screen.dart';
import 'restart_app/restart_app_screen.dart';
import 'screenshot/screenshot_screen.dart';
import 'share_plus/share_plus_screen.dart';
import 'shop/shop_screen.dart';
import 'theme/theme_screen.dart';
import 'tiengviet/tiengviet_screen.dart';
import 'timeago/timeago_screen.dart';
import 'tip_calculator/tip_calculator_screen.dart';
import 'todo/screen/to_do_main_screen.dart';
import 'url_launcher/url_launcher_screen.dart';
import 'wakelock/wakelock_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Demo menu",
        () {
          Get.back();
        },
        null,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
              physics: BouncingScrollPhysics(),
              children: [
                UIUtils.getButton(
                  "AdvancePDFViewerScreen",
                  () {
                    Get.to(() => AdvancePDFViewerScreen());
                  },
                ),
                UIUtils.getButton(
                  "battery_plus",
                  () {
                    Get.to(() => BatteryPlusScreen());
                  },
                  description:
                      "Flutter plugin for accessing information about the battery state(full, charging, discharging).",
                ),
                UIUtils.getButton(
                  "clipboard",
                  () {
                    Get.to(() => ClipboardScreen());
                  },
                  description:
                      "A flutter package that helps copy text to clipboard and paste from clipboard.",
                ),
                UIUtils.getButton(
                  "connectivity_plus",
                  () {
                    Get.to(() => ConnectivityPlusScreen());
                  },
                  description:
                      "Flutter plugin for discovering the state of the network (WiFi & mobile/cellular) connectivity on Android and iOS.",
                ),
                UIUtils.getButton(
                  "Counter",
                  () {
                    Get.to(() => CounterScreen());
                  },
                ),
                UIUtils.getButton(
                  "crypto",
                  () {
                    Get.to(() => CryptoScreen());
                  },
                ),
                UIUtils.getButton(
                  "device_info_plus",
                  () {
                    Get.to(() => DeviceInfoPlusScreen());
                  },
                  description:
                      "Flutter plugin providing detailed information about the device (make, model, etc.), and Android or iOS version the app is running on.",
                ),
                UIUtils.getButton(
                  "diacritic",
                  () {
                    Get.to(() => DiacriticScreen());
                  },
                  description:
                      "Removes common accents and diacritical signs from a string by replacing them with an equivalent character.",
                ),
                UIUtils.getButton(
                  "dio",
                  () {
                    Get.to(() => DioScreen());
                  },
                  description:
                      "A powerful Http client for Dart, which supports Interceptors, FormData, Request Cancellation, File Downloading, Timeout etc.",
                ),
                UIUtils.getButton(
                  "easy_debounce",
                  () {
                    Get.to(() => EasyDebounceScreen());
                  },
                  description:
                      "An extremely easy-to-use method call debouncer package for Dart/Flutter.",
                ),
                UIUtils.getButton(
                  "encrypt",
                  () {
                    Get.to(() => EncryptScreen());
                  },
                  description:
                      "A set of high-level APIs over PointyCastle for two-way cryptography.",
                ),
                UIUtils.getButton(
                  "event_bus",
                  () {
                    Get.to(() => EventBusScreen());
                  },
                  description:
                      "A simple Event Bus using Dart Streams for decoupling applications",
                ),
                UIUtils.getButton(
                  "firebase_remote_config",
                  () {
                    Get.to(() => FirebaseRemoteConfigScreen());
                  },
                  description:
                      "Flutter plugin for Firebase Remote Config. Update your application look and feel and behavior without re-releasing.",
                ),
                UIUtils.getButton(
                  "flutter_bloc",
                  () {
                    Get.to(() => MenuFlutterBlockScreen());
                  },
                  description:
                      "Flutter Widgets that make it easy to implement the BLoC (Business Logic Component) design pattern. Built to be used with the bloc state management package.",
                ),
                UIUtils.getButton(
                  "FlutterLocalNotificationScreen",
                  () async {
                    final NotificationAppLaunchDetails?
                        notificationAppLaunchDetails =
                        await flutterLocalNotificationsPlugin
                            .getNotificationAppLaunchDetails();
                    Get.to(() => FlutterLocalNotificationScreen(
                        notificationAppLaunchDetails));
                  },
                  description:
                      "A cross platform plugin for displaying and scheduling local notifications for Flutter applications with the ability to customise for each platform.",
                ),
                UIUtils.getButton(
                  "flutter_offline",
                  () {
                    Get.to(() => FlutterOfflineScreen());
                  },
                  description:
                      "A tidy utility to handle offline/online connectivity like a Boss.",
                ),
                UIUtils.getButton(
                  "flutter_screen_lock",
                  () {
                    Get.to(() => FlutterScreenLockScreen());
                  },
                  description:
                      "Provides the ability to lock the screen on ios and android. Biometric authentication can be used in addition to passcode.",
                ),
                UIUtils.getButton(
                  "focus_detector",
                  () {
                    Get.to(() => FocusDetectorScreen());
                  },
                  description:
                      "Detects when your widget appears or disappears from the screen",
                ),
                UIUtils.getButton(
                  "get",
                  () {
                    Get.to(() => GetXScreen());
                  },
                  description:
                      "Open screens/snackbars/dialogs without context, manage states and inject dependencies easily with GetX.",
                ),
                UIUtils.getButton(
                  "html2md",
                  () {
                    Get.to(() => Html2MdScreen());
                  },
                  description:
                      "A library for converting HTML to Markdown. It supports CommonMark, simple table and custom converting rules.",
                ),
                UIUtils.getButton(
                  "image_gallery_saver",
                  () {
                    Get.to(() => ImageGallerySaverScreen());
                  },
                  description:
                      "A new flutter plugin project for save image to gallery, iOS need to add the following keys to your Info.plist file.",
                ),
                UIUtils.getButton(
                  "Inherited",
                  () {
                    Get.to(() => MenuInheritedScreen());
                  },
                ),
                UIUtils.getButton(
                  "Load Local Json",
                  () {
                    Get.to(() => LoadLocalJsonScreen());
                  },
                ),
                UIUtils.getButton(
                  "local_auth",
                  () {
                    Get.to(() => LocalAuthScreen());
                  },
                  description:
                      "Flutter plugin for Android and iOS devices to allow local authentication via fingerprint, touch ID, face ID, passcode, pin, or pattern.",
                ),
                UIUtils.getButton(
                  "one_target_mobile_sdk",
                  () {
                    Get.to(() => OneTargetMobileSDKScreen());
                  },
                  description: "G1 tracking's plugin",
                ),
                UIUtils.getButton(
                  "package_info_plus",
                  () {
                    Get.to(() => PackageInforPlusScreen());
                  },
                  description:
                      "Flutter plugin for querying information about the application package, such as CFBundleVersion on iOS or versionCode on Android.",
                ),
                UIUtils.getButton(
                  "pdf_text",
                  () {
                    Get.to(() => PdfTextScreen());
                  },
                  description:
                      "This plugin for Flutter allows you to read the text content of PDF documents and convert it into strings. It works on iOS and Android.",
                ),
                UIUtils.getButton(
                  "permission_handler",
                  () {
                    Get.to(() => PermissionHandlerScreen());
                  },
                  description:
                      "Permission plugin for Flutter. This plugin provides a cross-platform (iOS, Android) API to request and check permissions.",
                ),
                UIUtils.getButton(
                  "recase",
                  () {
                    Get.to(() => RecaseScreen());
                  },
                  description:
                      "Changes the case of the input text to the desire case convention.",
                ),
                UIUtils.getButton(
                  "remove_emoji",
                  () {
                    Get.to(() => RemoveEmojiScreen());
                  },
                  description:
                      "Dart and flutter package accurately replace/remove emojis in text",
                ),
                UIUtils.getButton(
                  "restart_app",
                  () {
                    Get.to(() => RestartAppScreen());
                  },
                  description:
                      "A simple package that helps you to restart the whole android app with a single function call.",
                ),
                UIUtils.getButton(
                  "Scanner",
                  () {
                    Get.to(() => MenuScannerScreen());
                  },
                  description: "Qr, Barcode...",
                ),
                UIUtils.getButton(
                  "screenshot",
                  () {
                    Get.to(() => ScreenshotScreen());
                  },
                  description:
                      "Flutter Screenshot Package (Runtime). Capture any Widget as an image.",
                ),
                UIUtils.getButton(
                  "share_plus",
                  () {
                    Get.to(() => SharePlusScreen());
                  },
                  description:
                      "Flutter plugin for sharing content via the platform share UI, using the ACTION_SEND intent on Android and UIActivityViewController on iOS.",
                ),
                UIUtils.getButton(
                  "Shop",
                  () {
                    Get.to(() => ShopScreen());
                  },
                ),
                UIUtils.getButton(
                  "Theme",
                  () {
                    Get.to(() => ThemeScreen());
                  },
                ),
                UIUtils.getButton(
                  "tiengviet",
                  () {
                    Get.to(() => TiengVietScreen());
                  },
                  description:
                      "🇻🇳 Converts vietnamese language sign to unsigned easily. 😍 Give me a string vietnamese language, i will respond you string vietnamese unsigned. 👍",
                ),
                UIUtils.getButton(
                  "timeago",
                  () {
                    Get.to(() => TimeAgoScreen());
                  },
                  description:
                      "A library useful for creating fuzzy timestamps. (e.g. '15 minutes ago')",
                ),
                UIUtils.getButton(
                  "Tip calculator",
                  () {
                    Get.to(() => TipCalculatorScreen());
                  },
                ),
                UIUtils.getButton(
                  "ToDoMainScreen",
                  () {
                    Get.to(() => ToDoMainScreen());
                  },
                ),
                UIUtils.getButton(
                  "url_launcher",
                  () {
                    Get.to(() => UrlLauncherScreen());
                  },
                  description:
                      "Flutter plugin for launching a URL. Supports web, phone, SMS, and email schemes.",
                ),
                UIUtils.getButton(
                  "velocity_x",
                  () {
                    UrlLauncherUtils.launchInWebViewWithJavaScript(
                        "https://pub.dev/packages/velocity_x");
                  },
                  description:
                      "A minimalist Flutter framework for rapidly building custom designs..",
                ),
                UIUtils.getButton(
                  "wakelock",
                  () {
                    Get.to(() => WakeLockScreen());
                  },
                  description:
                      "Plugin that allows you to keep the device screen awake, i.e. prevent the screen from sleeping on Android, iOS, macOS, Windows, and web.",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: DimenConstants.marginPaddingSmall),
            child: MaxAdView(
              adUnitId: bannerAdUnitId,
              adFormat: AdFormat.banner,
              listener: AdViewAdListener(onAdLoadedCallback: (ad) {
                Dog.i('Banner widget ad loaded from ${ad.networkName}');
              }, onAdLoadFailedCallback: (adUnitId, error) {
                Dog.i(
                    'Banner widget ad failed to load with error code ${error.code} and message: ${error.message}');
              }, onAdClickedCallback: (ad) {
                Dog.i('Banner widget ad clicked');
              }, onAdExpandedCallback: (ad) {
                Dog.i('Banner widget ad expanded');
              }, onAdCollapsedCallback: (ad) {
                Dog.i('Banner widget ad collapsed');
              }, onAdRevenuePaidCallback: (ad) {
                Dog.i('Banner widget ad revenue paid: ${ad.revenue}');
              }),
            ),
          ),
        ],
      ),
    );
  }
}
