import 'package:applovin_max/applovin_max.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/animation/lottie/lottie_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/animation/splash/splash_screen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/animation/tdk_bouncingwidget/tdk_bouncingwidget_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../lib/util/log_dog_utils.dart';
import '../applovin/applovin_screen.dart';
import 'animated_align_screen.dart';
import 'animated_builder_screen.dart';
import 'animated_container_screen.dart';
import 'animated_cross_fade_screen.dart';
import 'animated_default_text_style_screen.dart';
import 'animated_icon_screen.dart';
import 'animated_list_screen.dart';
import 'animated_modal_barrier_screen.dart';
import 'animated_opacity_screen.dart';
import 'animated_padding_screen.dart';
import 'animated_physical_model_screen.dart';
import 'animated_positioned_screen.dart';
import 'animated_size_screen.dart';
import 'animated_switcher_screen.dart';
import 'animated_theme_screen.dart';
import 'circular_reveal_animation/circular_reveal_animation_screen.dart';
import 'confetti/confetti_screen.dart';
import 'decorated_box_transition_screen.dart';
import 'fade_in_image_screen.dart';
import 'fade_transition_screen.dart';
import 'hero/hero_animation_demo_screen.dart';
import 'positioned_transition_screen.dart';
import 'rotation_transition_screen.dart';
import 'route_transition/route_transition_screen.dart';

class MenuAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Animation menu",
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
                  "circular_reveal_animation",
                  () {
                    Get.to(() => CircularRevealAnimationScreen());
                  },
                  description:
                      "Circular Reveal Animation as Flutter widget! Inspired by Android's ViewAnimationUtils.createCircularReveal(...).",
                ),
                UIUtils.getButton(
                  "confetti",
                  () {
                    Get.to(() => ConfettiScreen());
                  },
                  description:
                      "Blast colorful confetti all over the screen. Celebrate in app achievements with style. Control the velocity, angle, gravity and amount of confetti.",
                ),
                UIUtils.getButton(
                  "HeroAnimationDemoScreen",
                  () {
                    Get.to(() => HeroAnimationDemoScreen());
                  },
                ),
                UIUtils.getButton(
                  "lottie",
                  () {
                    Get.to(() => LottieScreen());
                  },
                  description:
                      "Render After Effects animations natively on Flutter. This package is a pure Dart implementation of a Lottie player.",
                ),
                UIUtils.getButton(
                  "splash",
                  () {
                    Get.to(() => SplashScreen());
                  },
                  description: "This package contains a few InkSplash and InkRipple alternatives for a better UI",
                ),
                UIUtils.getButton(
                  "tdk_bouncingwidget",
                  () {
                    Get.to(() => TdkBouncingWidgetScreen());
                  },
                  description:
                      "A light-weight flutter package to acheive bouncing animation in flutter widgets while clicking.Three types of bouncing animations are provided",
                ),
                UIUtils.getButton(
                  "RouteTransitionScreen",
                  () {
                    Get.to(() => RouteTransitionScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedAlignScreen",
                  () {
                    Get.to(() => AnimatedAlignScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedBuilder",
                  () {
                    Get.to(() => AnimatedBuilderScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedContainerScreen",
                  () {
                    Get.to(() => AnimatedContainerScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedCrossFadeScreen",
                  () {
                    Get.to(() => AnimatedCrossFadeScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedDefaultTextStyleScreen",
                  () {
                    Get.to(() => AnimatedDefaultTextStyleScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedIconScreen",
                  () {
                    Get.to(() => AnimatedIconScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedListScreen",
                  () {
                    Get.to(() => AnimatedListScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedModalBarrierScreen",
                  () {
                    Get.to(() => AnimatedModalBarrierScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedOpacityScreen",
                  () {
                    Get.to(() => AnimatedOpacityScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedPaddingScreen",
                  () {
                    Get.to(() => AnimatedPaddingScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedPhysicalModelScreen",
                  () {
                    Get.to(() => AnimatedPhysicalModelScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedPositionedScreen",
                  () {
                    Get.to(() => AnimatedPositionedScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedSizeScreen",
                  () {
                    Get.to(() => AnimatedSizeScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedSwitcherScreen",
                  () {
                    Get.to(() => AnimatedSwitcherScreen());
                  },
                ),
                UIUtils.getButton(
                  "AnimatedThemeScreen",
                  () {
                    Get.to(() => AnimatedThemeScreen());
                  },
                ),
                UIUtils.getButton(
                  "DecoratedBoxTransitionScreen",
                  () {
                    Get.to(() => DecoratedBoxTransitionScreen());
                  },
                ),
                UIUtils.getButton(
                  "FadeInImageScreen",
                  () {
                    Get.to(() => FadeInImageScreen());
                  },
                ),
                UIUtils.getButton(
                  "FadeTransitionScreen",
                  () {
                    Get.to(() => FadeTransitionScreen());
                  },
                ),
                UIUtils.getButton(
                  "PositionedTransitionScreen",
                  () {
                    Get.to(() => PositionedTransitionScreen());
                  },
                ),
                UIUtils.getButton(
                  "RotationTransitionScreen",
                  () {
                    Get.to(() => RotationTransitionScreen());
                  },
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
                Dog.i('Banner widget ad failed to load with error code ${error.code} and message: ${error.message}');
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
