import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/animation/lottie/LottieScreen.dart';
import 'package:com.roy93group.flutter_tutorial/sample/animation/routeTransition/RouteTransitionScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AnimatedAlignScreen.dart';
import 'AnimatedBuilderScreen.dart';
import 'AnimatedContainerScreen.dart';
import 'AnimatedCrossFadeScreen.dart';
import 'AnimatedDefaultTextStyleScreen.dart';
import 'AnimatedIconScreen.dart';
import 'AnimatedListScreen.dart';
import 'AnimatedModalBarrierScreen.dart';
import 'AnimatedOpacityScreen.dart';
import 'AnimatedPaddingScreen.dart';
import 'AnimatedPhysicalModelScreen.dart';
import 'AnimatedPositionedScreen.dart';
import 'AnimatedSizeScreen.dart';
import 'AnimatedSwitcherScreen.dart';
import 'AnimatedThemeScreen.dart';
import 'DecoratedBoxTransitionScreen.dart';
import 'FadeInImageScreen.dart';
import 'FadeTransitionScreen.dart';
import 'hero/HeroAnimationDemoScreen.dart';
import 'PositionedTransitionScreen.dart';
import 'RotationTransitionScreen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Animation menu",
        () => {
          Get.back(),
        },
        null,
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "HeroAnimationDemoScreen",
            () => {
              Get.to(HeroAnimationDemoScreen()),
            },
          ),
          UIUtils.getButton(
            "RouteTransitionScreen",
            () => {
              Get.to(RouteTransitionScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedAlignScreen",
            () => {
              Get.to(AnimatedAlignScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedBuilder",
            () => {
              Get.to(AnimatedBuilderScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedContainerScreen",
            () => {
              Get.to(AnimatedContainerScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedCrossFadeScreen",
            () => {
              Get.to(AnimatedCrossFadeScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedDefaultTextStyleScreen",
            () => {
              Get.to(AnimatedDefaultTextStyleScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedIconScreen",
            () => {
              Get.to(AnimatedIconScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedListScreen",
            () => {
              Get.to(AnimatedListScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedModalBarrierScreen",
            () => {
              Get.to(AnimatedModalBarrierScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedOpacityScreen",
            () => {
              Get.to(AnimatedOpacityScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedPaddingScreen",
            () => {
              Get.to(AnimatedPaddingScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedPhysicalModelScreen",
            () => {
              Get.to(AnimatedPhysicalModelScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedPositionedScreen",
            () => {
              Get.to(AnimatedPositionedScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedSizeScreen",
            () => {
              Get.to(AnimatedSizeScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedSwitcherScreen",
            () => {
              Get.to(AnimatedSwitcherScreen()),
            },
          ),
          UIUtils.getButton(
            "AnimatedThemeScreen",
            () => {
              Get.to(AnimatedThemeScreen()),
            },
          ),
          UIUtils.getButton(
            "DecoratedBoxTransitionScreen",
            () => {
              Get.to(DecoratedBoxTransitionScreen()),
            },
          ),
          UIUtils.getButton(
            "FadeInImageScreen",
            () => {
              Get.to(FadeInImageScreen()),
            },
          ),
          UIUtils.getButton(
            "FadeTransitionScreen",
            () => {
              Get.to(FadeTransitionScreen()),
            },
          ),
          UIUtils.getButton(
            "PositionedTransitionScreen",
            () => {
              Get.to(PositionedTransitionScreen()),
            },
          ),
          UIUtils.getButton(
            "RotationTransitionScreen",
            () => {
              Get.to(RotationTransitionScreen()),
            },
          ),
          UIUtils.getButton(
            "LottieScreen",
            () => {
              Get.to(LottieScreen()),
            },
          ),
        ],
      ),
    );
  }
}
