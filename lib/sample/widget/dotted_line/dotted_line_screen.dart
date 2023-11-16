import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DottedLineScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DottedLineScreenState();
  }
}

class _DottedLineScreenState extends BaseStatefulState<DottedLineScreen> {
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
        "dotted_line",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/dotted_line");
        },
      ),
      body: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final space = SizedBox(height: 50);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          space,
          Text("Default"),
          DottedLine(),
          space,
          Text("Dash length changed"),
          DottedLine(dashLength: 40),
          space,
          Text("Dash gap length changed"),
          DottedLine(dashLength: 30, dashGapLength: 30),
          space,
          Text("Line thickness changed"),
          DottedLine(
            dashLength: 30,
            dashGapLength: 30,
            lineThickness: 30,
          ),
          space,
          Text("Dash radius changed"),
          DottedLine(
            dashLength: 30,
            dashGapLength: 30,
            lineThickness: 30,
            dashRadius: 16,
          ),
          space,
          Text("Dash and dash gap color changed"),
          DottedLine(
            dashLength: 30,
            dashGapLength: 30,
            lineThickness: 30,
            dashColor: Colors.blue,
            dashGapColor: Colors.red,
          ),
          space,
          Text("Line direction and line length changed"),
          DottedLine(
            dashLength: 30,
            dashGapLength: 30,
            lineThickness: 30,
            dashColor: Colors.blue,
            dashGapColor: Colors.red,
            direction: Axis.vertical,
            lineLength: 150,
          ),
          space,
          Text("Dash gradient changed"),
          DottedLine(
            dashGradient: [
              Colors.red,
              Colors.blue,
            ],
            dashLength: 10,
            lineThickness: 30,
          ),
          space,
          Text("Dash gradient and dash gap gradient changed"),
          DottedLine(
            dashGradient: [
              Colors.red,
              Colors.red.withAlpha(0),
            ],
            dashGapGradient: [
              Colors.blue,
              Colors.blue.withAlpha(0),
            ],
            dashLength: 10,
            dashGapLength: 10,
            lineThickness: 30,
          ),
          space,
        ],
      ),
    );
  }
}
