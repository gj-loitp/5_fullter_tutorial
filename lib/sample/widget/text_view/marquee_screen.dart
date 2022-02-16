import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:marquee/marquee.dart';

class MarqueeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MarqueeScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/marquee");
        },
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          Container(
            height: 50,
            color: Colors.yellow,
            padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
            child: _buildMarquee(),
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          Container(
            height: 50,
            color: Colors.red,
            padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
            child: _buildComplexMarquee(),
          ),
        ],
      ),
    );
  }

  Widget _buildMarquee() {
    return Marquee(
      text: 'There once was a boy who told this story about a boy: "',
    );
  }

  Widget _buildComplexMarquee() {
    return Marquee(
      text:
          'Some sample text that takes some space. Some sample text that takes some space. Some sample text that takes some space. Some sample text that takes some space.',
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 20.0,
      velocity: 100.0,
      pauseAfterRound: Duration(seconds: 1),
      showFadingOnlyWhenScrolling: true,
      fadingEdgeStartFraction: 0.1,
      fadingEdgeEndFraction: 0.1,
      numberOfRounds: 3,
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }
}
