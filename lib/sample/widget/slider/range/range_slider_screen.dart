import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class RangeSliderScreen extends StatefulWidget {
  RangeSliderScreen({Key? key}) : super(key: key);

  @override
  _RangeSliderScreenState createState() => _RangeSliderScreenState();
}

class _RangeSliderScreenState extends State<RangeSliderScreen> {
  RangeValues _currentRangeValues = const RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "RangeSliderScreen",
        () => Get.back(),
        null,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.volume_up,
                  size: 40,
                ),
                new Expanded(
                  child: RangeSlider(
                    values: _currentRangeValues,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(
                        () {
                          _currentRangeValues = values;
                        },
                      );
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
