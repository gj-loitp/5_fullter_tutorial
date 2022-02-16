import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class TextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "TextScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          child: Column(
            children: <Widget>[
              _text1(),
              SizedBox(height: 50),
              _text2(),
              SizedBox(height: 50),
              _text3(),
              SizedBox(height: 50),
              TextWidget(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _text1() {
    return Text(
      'Hello World!\nLoitp1\nLoitp2\nLoitp3',
      style: TextStyle(fontWeight: FontWeight.bold),
      maxLines: 5,
      textAlign: TextAlign.left,
      textDirection: TextDirection.rtl,
    );
  }

  Widget _text2() {
    return Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: "Hello ", style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
              text: "World 123456",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _text3() {
    return Text(
      'Hello World!\nLoitp1\nLoitp2\nLoitp3',
      style: UIUtils.getCustomFontTextStyle(),
      maxLines: 5,
      textAlign: TextAlign.end,
      textDirection: TextDirection.ltr,
    );
  }
}

class TextWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "Hello World ...",
          ),
          Text(
            "Hello World ...",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Hello World ...",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            "Hello World ...",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.black),
          ),
        ],
      ),
    );
  }
}
