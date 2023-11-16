import 'dart:math';

import 'package:applovin_max/applovin_max.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/applovin/applovin_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/empty_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/func/main_func_screen.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'lib/core/base_stateful_state.dart';
import 'lib/util/log_dog_utils.dart';
import 'lib/util/ui_utils.dart';
import 'sample/animation/menu_animation_screen.dart';
import 'sample/controller/main_menu_controller.dart';
import 'sample/database/menu_database_screen.dart';
import 'sample/demo/menu_demo_screen.dart';
import 'sample/demo/syntax/syntax_screen.dart';
import 'sample/widget/menu_widget_screen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuScreenState();
  }
}

class _MenuScreenState extends BaseStatefulState<MenuScreen> {
  var _cMenu = Get.put(MainMenuController());
  var _interstitialRetryAttempt = 0;

  void initializeInterstitialAds() {
    AppLovinMAX.setInterstitialListener(InterstitialListener(
      onAdLoadedCallback: (ad) {
        // Interstitial ad is ready to be shown. AppLovinMAX.isInterstitialReady(_interstitial_ad_unit_id) will now return 'true'
        Dog.e('Interstitial ad loaded from ' + ad.networkName);
        // Reset retry attempt
        _interstitialRetryAttempt = 0;
      },
      onAdLoadFailedCallback: (adUnitId, error) {
        // Interstitial ad failed to load
        // We recommend retrying with exponentially higher delays up to a maximum delay (in this case 64 seconds)
        _interstitialRetryAttempt = _interstitialRetryAttempt + 1;
        int retryDelay = pow(2, min(6, _interstitialRetryAttempt)).toInt();
        Dog.e('Interstitial ad failed to load with code ' +
            error.code.toString() +
            ' - retrying in ' +
            retryDelay.toString() +
            's');
        Future.delayed(Duration(milliseconds: retryDelay * 1000), () {
          AppLovinMAX.loadInterstitial(interstitialAdUnitId);
        });
      },
      onAdDisplayedCallback: (ad) {
        Dog.e("onAdDisplayedCallback");
      },
      onAdDisplayFailedCallback: (ad, error) {
        Dog.e("onAdDisplayFailedCallback");
      },
      onAdClickedCallback: (ad) {
        Dog.e("onAdClickedCallback");
      },
      onAdHiddenCallback: (ad) {
        Dog.e("onAdHiddenCallback");
      },
    ));

    // Load the first interstitial
    AppLovinMAX.loadInterstitial(interstitialAdUnitId);
  }

  Future<void> showInterAd() async {
    bool isReady =
        (await AppLovinMAX.isInterstitialReady(interstitialAdUnitId))!;
    if (isReady) {
      AppLovinMAX.showInterstitial(interstitialAdUnitId);
    } else {
      Dog.e('Loading interstitial ad...');
      AppLovinMAX.loadInterstitial(interstitialAdUnitId);
    }
  }

  @override
  void initState() {
    super.initState();

    // _cMenu.setupData();
    _cMenu.initPackageInfo();

    initializeInterstitialAds();
  }

  @override
  void dispose() {
    _cMenu.clearOnDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Main menu",
        () {
          SystemNavigator.pop();
        },
        () {
          UrlLauncherUtils.launchPolicy();
        },
        iconData: Icons.policy,
      ),
      body: Obx(() {
        return Column(
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
                  Container(
                    alignment: Alignment.center,
                    child: UIUtils.getText("Version ${_cMenu.versionName}"),
                  ),
                  UIUtils.getButton(
                    "Android Native Tutorial (Kotlin/Java)",
                    () {
                      UrlLauncherUtils.launchInBrowser(
                          "https://play.google.com/store/apps/details?id=com.roygroup.base");
                    },
                  ),
                  UIUtils.getButton(
                    "Animation",
                    () {
                      showInterAd();
                      Get.to(() => MenuAnimationScreen());
                    },
                  ),
                  UIUtils.getButton(
                    "Applovin",
                    () {
                      Get.to(() => ApplovinScreen());
                    },
                  ),
                  UIUtils.getButton(
                    "MenuDatabaseScreen",
                    () {
                      showInterAd();
                      Get.to(() => MenuDatabaseScreen());
                    },
                  ),
                  UIUtils.getButton(
                    "Demo",
                    () {
                      showInterAd();
                      Get.to(() => MenuDemoScreen());
                    },
                  ),
                  UIUtils.getButton(
                    "Function",
                    () {
                      showInterAd();
                      Get.to(() => MenuFuncScreen());
                    },
                  ),
                  UIUtils.getButton(
                    "Syntax",
                    () {
                      Get.to(() => SyntaxScreen());
                    },
                  ),
                  UIUtils.getButton(
                    "Widget",
                    () {
                      showInterAd();
                      Get.to(() => MenuWidgetScreen());
                    },
                  ),
                  UIUtils.getButton(
                    "Github",
                    () {
                      UrlLauncherUtils.launchInBrowser(
                          "https://github.com/tplloi/fullter_tutorial");
                    },
                  ),
                  UIUtils.getButton(
                    "Rate app",
                    () {
                      UrlLauncherUtils.rateApp(null, null);
                    },
                  ),
                  UIUtils.getButton(
                    "More app",
                    () {
                      UrlLauncherUtils.moreApp();
                    },
                  ),
                  UIUtils.getButton(
                    "Policy",
                    () {
                      UrlLauncherUtils.launchPolicy();
                    },
                  ),
                  UIUtils.getButton(
                    "EmptyScreen",
                    () {
                      Get.to(() => EmptyScreen());
                    },
                  ),
                  if (kDebugMode)
                    UIUtils.getButton(
                      "Force a test crash",
                      () {
                        FirebaseCrashlytics.instance.crash();
                      },
                    ),
                  SizedBox(height: DimenConstants.marginPaddingMedium),
                  InkWell(
                    onTap: () {
                      UrlLauncherUtils.moreApp();
                    },
                    child: UIUtils.getText(
                        """People can criticise me all the time they want, by this is what I am and I won't change the way I live for them.
I live the way I want to flow.
If we don’t transform the world, who will? If not now, when?
If you have something to give, give it now
Do your little bit of good where you are.
It’s those little bits of good put together that overwhelm the world.
Don’t just think, do it. Now it is you turn,  do it now, download my apps and rate 5 stars. Thank you!
https://play.google.com/store/apps/dev?id=9198084038765766736"""),
                  ),
                ],
              ),
            ),
            Container(
              // color: ColorConstants.appColor,
              width: Get.width,
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
        );
      }),
    );
  }
}
