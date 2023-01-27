import 'dart:math';

import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DotsIndicatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DotsIndicatorScreenState();
  }
}

class _DotsIndicatorScreenState extends BaseStatefulState<DotsIndicatorScreen> {
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
        "dots_indicator",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/dots_indicator");
        },
      ),
      body: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _totalDots = 5;
  double _currentPosition = 0.0;

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  void _updatePosition(double position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  Widget _buildRow(List<Widget> widgets) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgets,
      ),
    );
  }

  String getPrettyCurrPosition() {
    return (_currentPosition + 1.0).toStringAsPrecision(3);
  }

  @override
  Widget build(BuildContext context) {
    final decorator = DotsDecorator(
      activeColor: Colors.red,
      size: Size.square(15.0),
      activeSize: Size.square(35.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    );

    const titleStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
    );

    return Center(
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildRow([
            Text(
              'Current position ${getPrettyCurrPosition()} / $_totalDots',
              style: titleStyle,
            ),
          ]),
          _buildRow([
            SizedBox(
              width: 300.0,
              child: Slider(
                value: _currentPosition,
                max: (_totalDots - 1).toDouble(),
                onChanged: _updatePosition,
              ),
            ),
          ]),
          _buildRow([
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                _currentPosition = _currentPosition.ceilToDouble();
                _updatePosition(max(--_currentPosition, 0));
              },
            ),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                _currentPosition = _currentPosition.floorToDouble();
                _updatePosition(min(
                  ++_currentPosition,
                  _totalDots.toDouble(),
                ));
              },
            )
          ]),
          _buildRow([
            Column(
              children: [
                const Text('Vertical', style: titleStyle),
                const SizedBox(height: 16.0),
                DotsIndicator(
                  dotsCount: _totalDots,
                  position: _currentPosition,
                  axis: Axis.vertical,
                  decorator: decorator,
                  onTap: (pos) {
                    setState(() => _currentPosition = pos);
                  },
                ),
              ],
            ),
            Column(
              children: [
                const Text('Vertical reversed', style: titleStyle),
                const SizedBox(height: 16.0),
                DotsIndicator(
                  dotsCount: _totalDots,
                  position: _currentPosition,
                  axis: Axis.vertical,
                  reversed: true,
                  decorator: decorator,
                ),
              ],
            ),
          ]),
          _buildRow([
            const Text('Horizontal', style: titleStyle),
          ]),
          _buildRow([
            const Text('Individual custom dot'),
            DotsIndicator(
              dotsCount: _totalDots,
              position: _currentPosition,
              decorator: DotsDecorator(
                colors: [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.yellow,
                  Colors.cyan,
                ].reversed.toList(),
                activeColors: [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.yellow,
                  Colors.cyan,
                ],
                sizes: [
                  Size.square(40.0),
                  Size.square(35.0),
                  Size.square(30.0),
                  Size.square(25.0),
                  Size.square(20.0),
                ],
                activeSizes: [
                  Size.square(20.0),
                  Size.square(25.0),
                  Size.square(30.0),
                  Size.square(35.0),
                  Size.square(40.0),
                ],
                shapes: [
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ],
                activeShapes: [
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ],
              ),
            ),
          ]),
          _buildRow([
            const Text('Reversed'),
            DotsIndicator(
              dotsCount: _totalDots,
              position: _currentPosition,
              reversed: true,
              decorator: decorator,
            ),
          ]),
        ],
      ),
    );
  }
}
