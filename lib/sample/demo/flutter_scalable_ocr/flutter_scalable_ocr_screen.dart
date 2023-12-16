import 'dart:async';
import 'dart:developer';

import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scalable_ocr/flutter_scalable_ocr.dart';
import 'package:get/get.dart';

class FlutterScalableOcrScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterScalableOcrScreenState();
  }
}

class _FlutterScalableOcrScreenState extends BaseStatefulState<FlutterScalableOcrScreen> {
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
        "FlutterScalableOcrScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser("flutter_scalable_ocr");
        },
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";
  final StreamController<String> controller = StreamController<String>();

  void setText(value) {
    controller.add(value);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ScalableOCR(
              paintboxCustom: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 4.0
                ..color = const Color.fromARGB(153, 102, 160, 241),
              boxLeftOff: 5,
              boxBottomOff: 2.5,
              boxRightOff: 5,
              boxTopOff: 2.5,
              boxHeight: MediaQuery.of(context).size.height / 3,
              getRawData: (value) {
                inspect(value);
              },
              getScannedText: (value) {
                setText(value);
              }),
          StreamBuilder<String>(
            stream: controller.stream,
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              return Result(text: snapshot.data != null ? snapshot.data! : "");
            },
          )
        ],
      ),
    ));
  }
}

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text("Readed text: $text");
  }
}
