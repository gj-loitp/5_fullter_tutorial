import 'package:applovin_max/applovin_max.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/func/uuid/uuid_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/func/vibration/vibration_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../lib/core/base_stateful_state.dart';
import '../../lib/util/log_dog_utils.dart';
import '../../lib/util/ui_utils.dart';
import '../applovin/applovin_screen.dart';
import 'app_settings/app_settings_screen.dart';
import 'async/menu_async_screen.dart';
import 'characters/characters_screen.dart';
import 'communication_between_widget/communication_between_widget_screen.dart';
import 'device_preview/device_preview_screen.dart';
import 'email_validator/email_validator_screen.dart';
import 'feedback/feedback_screen.dart';
import 'flutter_image_compress/flutter_image_compress_screen.dart';
import 'flutter_phoenix/flutter_phoenix_screen.dart';
import 'hexcolor/hexcolor_screen.dart';
import 'internet_connection_checker/internet_connection_checker_screen.dart';
import 'internet_file/internet_file_screen.dart';
import 'nav/nav_screen.dart';
import 'platform_device_id/platform_device_id_screen.dart';
import 'random_string/random_string_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuFuncScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuFuncScreenState();
  }
}

class _MenuFuncScreenState extends BaseStatefulState<MenuFuncScreen> {
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
        "Fuction menu",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchPolicy();
        },
        iconData: Icons.policy,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingMedium,
                DimenConstants.marginPaddingLarge,
              ),
              children: [
                UIUtils.getButton(
                  "app_settings",
                  () {
                    Get.to(() => AppSettingsScreen());
                  },
                  description:
                      "A Flutter plugin for opening iOS and Android phone settings from an app.",
                ),
                UIUtils.getButton(
                  "Async",
                  () {
                    Get.to(() => MenuAsyncScreen());
                  },
                ),
                UIUtils.getButton("change_app_package_name", () {
                  UrlLauncherUtils.launchInWebViewWithJavaScript(
                      "https://pub.dev/packages/change_app_package_name");
                },
                    description:
                        "Change App Package Name with single command. Update AndroidManifest, build.gradle, MainActivity files & move MainActivity file to new directory structure automatically."),
                UIUtils.getButton(
                  "characters",
                  () {
                    Get.to(() => CharactersScreen());
                  },
                  description:
                      "String replacement with operations that are Unicode/grapheme cluster aware.",
                ),
                UIUtils.getButton(
                  "CommunicationBetweenWidgetScreen",
                  () {
                    Get.to(() => CommunicationBetweenWidgetScreen());
                  },
                ),
                UIUtils.getButton(
                  "device_preview",
                  () {
                    Get.to(() => DevicePreviewScreen());
                  },
                  description:
                      "Approximate how your Flutter app looks and performs on another device.",
                ),
                UIUtils.getButton(
                  "email_validator",
                  () {
                    Get.to(() => EmailValidatorScreen());
                  },
                  description:
                      "A simple (but correct) dart class for validating email addresses.",
                ),
                UIUtils.getButton(
                  "feedback",
                  () {
                    Get.to(() => FeedbackScreen());
                  },
                  description:
                      "A Flutter package for getting better feedback. It allows the user to give interactive feedback directly in the app.",
                ),
                UIUtils.getButton(
                  "flutter_app_name",
                  () {
                    UrlLauncherUtils.launchInWebViewWithJavaScript(
                        "https://pub.dev/packages/flutter_app_name");
                  },
                  description:
                      "A package that makes it easy to set your flutter app launcher name.",
                ),
                UIUtils.getButton(
                  "flutter_image_compress",
                  () {
                    Get.to(() => FlutterImageCompressScreen());
                  },
                  description:
                      "Compress image with native (Objective-C/Kotlin) with faster speed. Support Android/iOS.",
                ),
                UIUtils.getButton(
                  "flutter_phoenix",
                  () {
                    Get.to(() => FlutterPhoenixScreen());
                  },
                  description:
                      "Easily restart your application from scratch, losing any previous state.",
                ),
                UIUtils.getButton(
                  "hexcolor",
                  () {
                    Get.to(() => HexcolorScreen());
                  },
                  description:
                      "Brings HexColor for your dart and flutter projects, convert material colors to hex colors",
                ),
                UIUtils.getButton(
                  "internet_connection_checker",
                  () {
                    Get.to(() => InternetConnectionCheckerScreen());
                  },
                  description:
                      "A pure Dart library that checks for internet by opening a socket to a list of specified addresses, each with individual port and timeout. Defaults are provided for convenience.",
                ),
                UIUtils.getButton(
                  "internet_file",
                  () {
                    Get.to(() => InternetFileScreen());
                  },
                  description:
                      "A internet file getter (also optional downloader) that works in all platforms",
                ),
                UIUtils.getButton(
                  "intl",
                  () {
                    UrlLauncherUtils.launchInWebViewWithJavaScript(
                        "https://pub.dev/packages/intl");
                  },
                  description:
                      "Contains code to deal with internationalized/localized messages, date and number formatting and parsing, bi-directional text, and other internationalization issues.",
                ),
                UIUtils.getButton(
                  "nav",
                  () {
                    Get.to(() => NavScreen());
                  },
                  description:
                      "Provide easy way to navigate. Includes lots of routers. You can use this library on Android & iOS.",
                ),
                UIUtils.getButton(
                  "platform_device_id",
                  () {
                    Get.to(() => PlatformDeviceIdScreen());
                  },
                  description:
                      "You can get device id from platform - linux/mac/windows/android/ios/web.",
                ),
                UIUtils.getButton(
                  "random_string",
                  () {
                    Get.to(() => RandomStringScreen());
                  },
                  description:
                      "Simple library for generating random ascii strings by default using Random from 'dart:math'.",
                ),
                UIUtils.getButton(
                  "uuid",
                  () {
                    Get.to(() => UUIDScreen());
                  },
                  description:
                      "RFC4122 (v1, v4, v5) UUID Generator and Parser for all Dart platforms (Web, VM, Flutter)",
                ),
                UIUtils.getButton(
                  "vibration",
                  () {
                    Get.to(() => VibrationScreen());
                  },
                  description:
                      "A plugin for handling Vibration API on iOS, Android, and web.",
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
