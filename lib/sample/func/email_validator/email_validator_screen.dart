import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class EmailValidatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EmailValidatorScreenState();
  }
}

class _EmailValidatorScreenState
    extends BaseStatefulState<EmailValidatorScreen> {
  String s = "";

  @override
  void initState() {
    super.initState();

    const String email = 'roy93group@gmail.com';
    final bool isValid = EmailValidator.validate(email);
    s = s + '\nEmail $email is valid? ' + (isValid ? 'yes' : 'no');

    const String email1 = 'roy93group';
    final bool isValid1 = EmailValidator.validate(email1);
    s = s + '\nEmail $email1 is valid? ' + (isValid1 ? 'yes' : 'no');

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
        "email_validator",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/email_validator");
        },
      ),
      body: Center(
        child: UIUtils.getText(s),
      ),
    );
  }
}
