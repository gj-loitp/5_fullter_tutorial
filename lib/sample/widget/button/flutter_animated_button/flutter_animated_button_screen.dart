import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterAnimatedButtonScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterAnimatedButtonScreenState();
  }
}

class _FlutterAnimatedButtonScreenState
    extends BaseStatefulState<FlutterAnimatedButtonScreen> {
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
        "flutter_animated_button",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/flutter_animated_button");
        },
      ),
      body: AnimatedButtonDemo(),
    );
  }
}

class AnimatedButtonDemo extends StatefulWidget {
  @override
  _AnimatedButtonDemoState createState() => _AnimatedButtonDemoState();
}

class _AnimatedButtonDemoState extends State<AnimatedButtonDemo> {
  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    var submitTextStyle = GoogleFonts.nunito(
        fontSize: 28,
        letterSpacing: 5,
        color: Colors.white,
        fontWeight: FontWeight.w300);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              AnimatedButton(
                animatedOn: AnimatedOn.onHover,
                onPress: () {},
                onChanges: (change) {},
                height: 70,
                width: 200,
                text: 'SUBMIT',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_TOP_ROUNDER,
                textStyle: submitTextStyle,
                backgroundColor: Colors.black,
                selectedBackgroundColor: Colors.lightGreen,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedButton(
                onPress: () {},
                height: 70,
                width: 200,
                text: 'SUBMIT',
                gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
                selectedGradientColor: LinearGradient(
                    colors: [Colors.pinkAccent, Colors.purpleAccent]),
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_CENTER_ROUNDER,
                textStyle: submitTextStyle,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedButton(
                onPress: () {},
                height: 70,
                width: 200,
                text: 'SUBMIT',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                textStyle: submitTextStyle,
                backgroundColor: Colors.black,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedButton(
                onPress: () {},
                height: 70,
                width: 200,
                text: 'SUBMIT',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.RIGHT_TOP_ROUNDER,
                textStyle: submitTextStyle,
                backgroundColor: Colors.black,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedButton(
                onPress: () {},
                height: 70,
                width: 200,
                text: 'SUBMIT',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.RIGHT_CENTER_ROUNDER,
                textStyle: submitTextStyle,
                backgroundColor: Colors.black,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedButton(
                onPress: () {},
                height: 70,
                width: 200,
                text: 'SUBMIT',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                textStyle: submitTextStyle,
                backgroundColor: Colors.black,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedButton(
                onPress: () {},
                height: 70,
                width: 200,
                text: 'SUBMIT',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.TOP_CENTER_ROUNDER,
                textStyle: submitTextStyle,
                backgroundColor: Colors.black,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedButton(
                onPress: () {},
                height: 70,
                width: 200,
                text: 'SUBMIT',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
                textStyle: submitTextStyle,
                backgroundColor: Colors.black,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedButton(
                onPress: () {},
                height: 70,
                width: 200,
                text: 'SUBMIT',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.CENTER_ROUNDER,
                textStyle: submitTextStyle,
                backgroundColor: Colors.black,
                borderColor: Colors.white,
                borderWidth: 1,
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedButton.strip(
                animatedOn: AnimatedOn.onHover,
                height: 70,
                width: 200,
                text: 'SUBMIT',
                isReverse: true,
                selectedTextColor: Colors.black,
                textStyle: submitTextStyle,
                backgroundColor: Colors.black,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
