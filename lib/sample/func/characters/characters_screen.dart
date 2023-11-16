import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class CharactersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CharactersScreenState();
  }
}

class _CharactersScreenState extends BaseStatefulState<CharactersScreen> {
  @override
  void initState() {
    super.initState();
    test();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "characters",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/characters");
        },
      ),
      body: Center(
        child: UIUtils.getText("Check logcat"),
      ),
    );
  }

  void test() {
    var hi = 'Hi 🇩🇰';
    print('String is "$hi"\n');

    // Length.
    print('String.length: ${hi.length}');
    print('Characters.length: ${hi.characters.length}\n');

    // Last character.
    print('The string ends with: ${hi.substring(hi.length - 1)}');
    print('The last character: ${hi.characters.last}\n');

    // Skip last character.
    print('Substring -1: "${hi.substring(0, hi.length - 1)}"');
    print('Skipping last character: "${hi.characters.skipLast(1)}"\n');

    // Replace characters.
    var newHi = hi.characters.replaceAll('🇩🇰'.characters, '🇺🇸'.characters);
    print('Change flag: "$newHi"');
  }
}
