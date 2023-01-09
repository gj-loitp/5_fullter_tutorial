import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remove_emoji/remove_emoji.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RemoveEmojiScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RemoveEmojiScreenState();
  }
}

class _RemoveEmojiScreenState extends BaseStatefulState<RemoveEmojiScreen> {
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
    _test();
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "remove_emoji",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/remove_emoji");
        },
      ),
      body: Center(
        child: UIUtils.getText("Check log cat"),
      ),
    );
  }

  void _test() {
    var remove = RemoveEmoji();
    print(remove.removemoji(
        '🤣h😌e🙄l😪l😓o😳🤔👨‍🦰🤶🏿 🧝‍♂️🍝🥘🌯🍦🥂🥂🎂🍰🧁🍨🍧😁w🤷‍♂️o😎r🤪l🤦‍♂️d🐸🤑😆😖🎉🍾🤟🤩😢🐭😡😍📧😄😔😇🧐😈🙁🤓🙂🥱'));
    // or
    print(
        '🤣h😌e🙄l😪l😓o😳🤔👨‍🦰🤶🏿 🧝‍♂️🍝🥘🌯🍦🥂🥂🎂🍰🧁🍨🍧😁w🤷‍♂️o😎r🤪l🤦‍♂️d🐸🤑😆😖🎉🍾🤟🤩😢🐭😡😍📧😄😔😇🧐😈🙁🤓🙂🥱'
            .removemoji);
    // other language
    print('5 rue des écoles. la quantiné 75000 Paris🤣🥂'.removemoji);
    // get the regex string
    // this function will help you to get the regex string and use it in your own code
    print(remove.getRegexString());
  }
}
