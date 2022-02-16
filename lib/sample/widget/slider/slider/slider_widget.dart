import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 0;
  var _rangeValues = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      min: 0,
      max: 100,
      onChanged: (v) {
        setState(
          () {
            print("Slider value " + _value.toString());
            _value = v.roundToDouble();
          },
        );
      },
    );
  }
}
