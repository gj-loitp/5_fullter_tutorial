import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class EditTextScreen extends StatefulWidget {
  @override
  EditTextScreenState createState() => EditTextScreenState();
}

class EditTextScreenState extends State<EditTextScreen> {
  String _results = "";
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "EditTextScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        padding: const EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                style: UIUtils.getStyleText(),
                decoration: InputDecoration(
                  hintText: "Enter text here...",
                ),
                onSubmitted: (String str) {
                  setState(() {
                    _results = _results + "\n" + str;
                    _controller.text = "";
                  });
                },
                controller: _controller,
              ),
              UIUtils.getText(_results),
            ],
          ),
        ),
      ),
    );
  }
}
