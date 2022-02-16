import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/color_constants.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';
import 'package:blur/blur.dart';
import 'package:hello_word/sample/demo/getx/getx_screen.dart';

class BlurScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BlurScreenState();
  }
}

class _BlurScreenState extends BaseStatefulState<BlurScreen> {
  double blurValue = 0;

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
        "BlurScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/blur");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset('assets/images/large-image.jpg').blurred(
                  blur: blurValue,
                  blurColor: ColorConstants.appColor,
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(20)),
                ),
              ),
              SizedBox(width: DimenConstants.marginPaddingMedium),
              Expanded(
                child: Image.asset('assets/images/large-image.jpg').blurred(
                  colorOpacity: 0.2,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(20)),
                  blur: blurValue,
                  overlay: Text(
                    'Cat',
                    style: UIUtils.getStyleText(),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/large-image.jpg',
                      scale: 3.5,
                      height: 300,
                    ),
                    Column(
                      children: [
                        Icon(Icons.image),
                        Text(
                          'Frost',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ).frosted(
                      blur: blurValue,
                      borderRadius: BorderRadius.circular(20),
                      padding: EdgeInsets.all(8),
                    )
                  ],
                ),
              ),
              Blur(
                blur: blurValue,
                blurColor: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Blur',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/large-image.jpg',
                width: MediaQuery.of(context).size.width - 40,
                height: 200,
                fit: BoxFit.fill,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Frost text',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ).frosted(
                    blur: blurValue,
                    padding: EdgeInsets.all(8),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.image).frosted(
                    padding: EdgeInsets.all(8),
                    blur: blurValue,
                  ),
                ],
              ),
            ],
          ),
          Slider(
            value: blurValue,
            max: 20,
            onChanged: (double value) {
              setState(() {
                blurValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
