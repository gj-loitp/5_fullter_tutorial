import 'dart:math' show Random;

import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_string/random_string.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RandomStringScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RandomStringScreenState();
  }
}

class _RandomStringScreenState extends BaseStatefulState<RandomStringScreen> {
  var s = "";

  @override
  void initState() {
    super.initState();
    _test();
  }

  void _test() {
    print(randomBetween(10,
        20)); // some integer between 10 and 20 where 0 <= min <= max <= 999999999999999
    s += "randomBetween(10, 20): ${randomBetween(10, 20)}";

    print(randomNumeric(4)); // sequence of 4 random numbers i.e. 3259
    s += "\nrandomNumeric(4): ${randomNumeric(4)}";

    print(randomString(10)); // random sequence of 10 characters i.e. e~f93(4l-
    s += "\nrandomString(10): ${randomString(10)}";

    print(randomAlpha(5)); // random sequence of 5 alpha characters i.e. aRztC
    s += "\nrandomAlpha(5): ${randomAlpha(5)}";

    print(randomAlphaNumeric(
        10)); // random sequence of 10 alpha numeric i.e. aRztC1y32B
    s += "\nrandomAlphaNumeric(10): ${randomAlphaNumeric(10)}";

    var r = Random.secure();
    print(randomBetween(10, 20,
        provider:
            CoreRandomProvider.from(r))); // You can use a provider from Random.
    s +=
        "\nrandomBetween(10, 20,provider: CoreRandomProvider.from(r)): ${randomBetween(10, 20, provider: CoreRandomProvider.from(r))}";

    print(randomBetween(10, 20,
        provider: _Provider())); // Or you can implement your own.
    s +=
        "\nrandomBetween(10, 20,provider: _Provider()): ${randomBetween(10, 20, provider: _Provider())}";

    setState(() {
      s;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "random_string",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/random_string");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getText(s),
        ],
      ),
    );
  }
}

class _Provider with AbstractRandomProvider {
  _Provider();

  double nextDouble() => 0.5;
}
