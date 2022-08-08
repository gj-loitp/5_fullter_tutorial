import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RaisedButtonScreen extends StatefulWidget {
  @override
  _RaisedButtonScreenState createState() => _RaisedButtonScreenState();
}

class _RaisedButtonScreenState extends State<RaisedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "RaisedButtonScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {},
          child: Text('RaisedButton'),
        ),
      ),
    );
  }
}
