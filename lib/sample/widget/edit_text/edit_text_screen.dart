import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

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
